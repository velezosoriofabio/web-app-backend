import functools
import db
import pymysql

def get_materiales():
    con = db.get_connection()
    cursor = con.cursor(pymysql.cursors.DictCursor)
    try:
        sql="SELECT * FROM materiales"
        cursor.execute(sql)
        ret = cursor.fetchall()
        print(ret)
        return ret
    finally:
        con.close()

def get_material(material_id):
    con = db.get_connection() 
    cursor = con.cursor(pymysql.cursors.DictCursor)
    ret={}
    try:
        sql="SELECT * FROM materiales WHERE id_material = {}".format(material_id)
        cursor.execute(sql)
        ret = cursor.fetchone()
        return ret
    finally:
        con.close()

def create_material(nombre_material, simbolo_material, categoria_material, descripcion_material):
    con = db.get_connection()
    cursor = con.cursor()
    try:
        sql="INSERT INTO materiales(nombre_material, simbolo_material, categoria_material, descripcion_material) VALUES('{}','{}','{}','{}')".format(nombre_material, simbolo_material, categoria_material, descripcion_material)
        print(sql)
        cursor.execute(sql)
        con.commit()
        id_org = cursor.lastrowid
        return {"message":"OK", "id": id_org}
    finally:
        con.close()

def update_material(nombre_material, simbolo_material, categoria_material, descripcion_material, material_id):
    con = db.get_connection()
    cursor = con.cursor()
    try:
        sql="UPDATE materiales set nombre_material='{0}', simbolo_material='{1}', categoria_material='{2}', descripcion_material='{3}' WHERE id_material = {4}".format(nombre_material, simbolo_material, categoria_material, descripcion_material, material_id)
        print(sql)
        cursor.execute(sql)
        con.commit()
        return {"message":"OK"}
    finally:
        con.close()

def delete_material(material_id):
    con = db.get_connection()
    cursor = con.cursor()
    try:
        sql="DELETE FROM materiales WHERE id_material = {}".format(material_id)
        cursor.execute(sql)
        con.commit()
        return {"message":"OK"}
    finally:
        con.close()
