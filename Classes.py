import psycopg2 as pg
import pandas as pd
import matplotlib.pyplot as plt
import pyautogui as pg1
import customtkinter
import tkinter as tk
from tkinter import END
import openpyxl


class Gluvo:
    def __init__(self):
        self.con = pg.connect(database='Gluvo',
                              user='postgres',
                              password='admin',
                              host='localhost',
                              port='5432')

        self.korisnik_df = None
        self.restoran_df = None
        self.jela_df = None
        self.porudzbina_df = None

    def import_sql(self):
        self.korisnik_df = pd.read_sql_query(
            'SELECT * FROM KORISNIK', self.con)
        self.restoran_df = pd.read_sql_query(
            'SELECT * FROM RESTORAN', self.con)
        self.jela_df = pd.read_sql_query('SELECT * FROM JELA', self.con)
        self.porudzbina_df = pd.read_sql_query(
            'SELECT * FROM PORUDZBINA', self.con)

    def log_in(self, clan, password):
        if clan in self.korisnik_df.username.values:
            if password in self.korisnik_df[self.korisnik_df.username == clan].values:
                if self.korisnik_df[self.korisnik_df.username == clan].tip_korisnika.values == "Kupac":
                    print("LOG IN SUCCESS - KUPAC")
                    return "Kupac"
                if self.korisnik_df[self.korisnik_df.username == clan].tip_korisnika.values == "Dostavljač":
                    print("LOG IN SUCCESS - DOSTAVLJAČ")
                    return "Dostavljač"
            return ("Invalid password")
        return ("Invalid username")

    def add_to_basket(self, clan, password, nazivi_jela, kolicina, dostavljen = False):
        
        filter_df = self.porudzbina_df[self.porudzbina_df["user_kupca"].str.contains(clan)]

        if self.log_in(clan, password) == "Kupac":#mozda i ne mora...OVO IDE U TKINTER.
                if any(nazivi_jela[0] in item for item in filter_df["nazivi_jela"]):
                    return "Jelo je vec na spisku"
                if clan not in filter_df["user_kupca"].to_list():
                    cursor = self.con.cursor()
                    obrok = "INSERT INTO PORUDZBINA(USER_KUPCA,NAZIVI_JELA,KOLICINA,DOSTAVLJEN) VALUES ('{}',ARRAY{},ARRAY{},'{}')".format(
                        clan, nazivi_jela, kolicina,dostavljen)
                    cursor.execute(obrok)
                    self.con.commit()
                    cursor.close()
                else:
                    cursor = self.con.cursor()
                    novo_jelo = "UPDATE PORUDZBINA SET NAZIVI_JELA = NAZIVI_JELA || ARRAY{} WHERE USER_KUPCA = '{}'".format(
                    nazivi_jela, clan)
                    nova_kolicina = "UPDATE PORUDZBINA SET KOLICINA = KOLICINA || ARRAY{} WHERE USER_KUPCA = '{}'".format(
                    kolicina, clan)
                    cursor.execute(novo_jelo)
                    cursor.execute(nova_kolicina)
                    self.con.commit()
                    cursor.close()

    def in_the_bakset(self):
        pass

    def delete_from_basket(self):
        pass

    def order(self):
        pass

    def export_basket_to_xlsx(self):
        pass


dostavljanje = Gluvo()
dostavljanje.import_sql()
# print(dostavljanje.porudzbina_df)
# print(dostavljanje.porudzbina_df)
# korisnik = dostavljanje.log_in("Punker", "1234")
# print(dostavljanje.jela_df["naziv"])
# print(dostavljanje.restoran_df)
print(dostavljanje.add_to_basket("Lizi", "1234", ["Palacinke"],["2"]))
# print(dostavljanje.korisnik_df.tip_korisnika)
