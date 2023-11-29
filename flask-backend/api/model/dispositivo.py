import functools
import db
import pymysql

def get_dispositivo():
    con = db.get_connection()
    cursor = con.cursor(pymysql.cursors.DictCursor)
    try:
        sql="SELECT * FROM dispositivo"
        cursor.execute(sql)
        ret = cursor.fetchall()
        print(ret)
        return ret
    finally:
        con.close()

def get_dispositivos(dispositivos_id):
    con = db.get_connection() 
    cursor = con.cursor(pymysql.cursors.DictCursor)
    ret={}
    try:
        sql="SELECT * FROM dispositivo WHERE id_dispositivo = {}".format(dispositivos_id)
        cursor.execute(sql)
        ret = cursor.fetchone()
        return ret
    finally:
        con.close()

def create_dispositivos(nombre_dispositivo, descripcion_dispositivo, imagen_dispositivo):
    con = db.get_connection()
    cursor = con.cursor()
    try:
        sql="INSERT INTO dispositivo(nombre_dispositivo, descripcion_dispositivo, imagen_dispositivo) VALUES('{}','{}','{}')".format(nombre_dispositivo, descripcion_dispositivo, imagen_dispositivo)
        print(sql)
        cursor.execute(sql)
        con.commit()
        id_org = cursor.lastrowid
        return {"message":"OK", "id": id_org}
    finally:
        con.close()

def update_dispositivos(nombre_dispositivo, descripcion_dispositivo, imagen_dispositivo, dispositivos_id):
    con = db.get_connection()
    cursor = con.cursor()
    try:
        sql="UPDATE dispositivo set nombre_dispositivo='{0}', descripcion_dispositivo='{1}', imagen_dispositivo='{2}' WHERE id_dispositivo = {3}".format(nombre_dispositivo, descripcion_dispositivo, imagen_dispositivo, dispositivos_id)
        print(sql)
        cursor.execute(sql)
        con.commit()
        return {"message":"OK"}
    finally:
        con.close()

def delete_dispositivos(dispositivos_id):
    con = db.get_connection()
    cursor = con.cursor()
    try:
        sql="DELETE FROM dispositivo WHERE id_dispositivo = {}".format(dispositivos_id)
        cursor.execute(sql)
        con.commit()
        return {"message":"OK"}
    finally:
        con.close()
