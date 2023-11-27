import functools
from flask import Blueprint, request, jsonify
from flask_cors import CORS
from model.dispositivo import (
    get_dispositivo,
    get_dispositivos,
    create_dispositivos,
    update_dispositivos,
    delete_dispositivos,
)

bp = Blueprint('dispositivo', __name__, url_prefix='/dispositivo')
CORS(bp)

@bp.route('/', methods=['GET'])
def list():
    retorno = get_dispositivo()
    return jsonify(retorno)

@bp.route('/<int:dispositivos_id>', methods=['GET'])
def get(dispositivos_id):
    return jsonify(get_dispositivos(dispositivos_id))

@bp.route('/', methods=['POST'])
def create():
    data = request.get_json()
    nombre_dispositivo = data['nombre_dispositivo']
    descripcion_dispositivo = data['descripcion_dispositivo']
    imagen_dispositivo = data['imagen_dispositivo']
    return jsonify(create_dispositivos(nombre_dispositivo, descripcion_dispositivo, imagen_dispositivo))

@bp.route('/<int:dispositivos_id>', methods=['PUT'])
def update(dispositivos_id):
    data = request.get_json()
    nombre_dispositivo = data['nombre_dispositivo']
    descripcion_dispositivo = data['descripcion_dispositivo']
    imagen_dispositivo = data['imagen_dispositivo']
    return jsonify(update_dispositivos(nombre_dispositivo, descripcion_dispositivo, imagen_dispositivo, dispositivos_id))

@bp.route('/<int:dispositivos_id>', methods=['DELETE'])
def delete(dispositivos_id):
    return jsonify(delete_dispositivos(dispositivos_id))
