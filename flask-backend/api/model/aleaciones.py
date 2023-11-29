import functools
import db
import pymysql

def get_aleaciones():
    con = db.get_connection()
    cursor = con.cursor(pymysql.cursors.DictCursor)
    try:
        sql="SELECT * FROM aleaciones"
        cursor.execute(sql)
        ret = cursor.fetchall()
        print(ret)
        return ret
    finally:
        con.close()

def get_aleacion(aleacion_id):
    con = db.get_connection() 
    cursor = con.cursor(pymysql.cursors.DictCursor)
    ret={}
    try:
        sql="SELECT * FROM aleaciones WHERE id_aleaciones = {}".format(aleacion_id)
        cursor.execute(sql)
        ret = cursor.fetchone()
        return ret
    finally:
        con.close()

def create_aleacion(nombre_aleacion, simbolo_aleacion, descripcion_aleacion):
    con = db.get_connection()
    cursor = con.cursor()
    try:
        sql="INSERT INTO aleaciones(nombre_aleacion, simbolo_aleacion, descripcion_aleacion) VALUES('{}','{}','{}')".format(nombre_aleacion, simbolo_aleacion, descripcion_aleacion)
        print(sql)
        cursor.execute(sql)
        con.commit()
        id_org = cursor.lastrowid
        return {"message":"OK", "id": id_org}
    finally:
        con.close()

def update_aleacion(nombre_aleacion, simbolo_aleacion, descripcion_aleacion, aleacion_id):
    con = db.get_connection()
    cursor = con.cursor()
    try:
        sql="UPDATE aleaciones set nombre_aleacion='{0}', simbolo_aleacion='{1}', descripcion_aleacion='{2}' WHERE id_aleaciones = {3}".format(nombre_aleacion, simbolo_aleacion, descripcion_aleacion, aleacion_id)
        print(sql)
        cursor.execute(sql)
        con.commit()
        return {"message":"OK"}
    finally:
        con.close()

def delete_aleacion(aleacion_id):
    con = db.get_connection()
    cursor = con.cursor()
    try:
        sql="DELETE FROM aleaciones WHERE id_aleaciones = {}".format(aleacion_id)
        cursor.execute(sql)
        con.commit()
        return {"message":"OK"}
    finally:
        con.close()
