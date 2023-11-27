import functools
from flask import Blueprint, request, jsonify
from flask_cors import CORS
from model.aleaciones import (
    get_aleaciones,
    get_aleacion,
    create_aleacion,
    update_aleacion,
    delete_aleacion,
)

bp = Blueprint('aleaciones', __name__, url_prefix='/aleaciones')
CORS(bp)

@bp.route('/', methods=['GET'])
def list():
    retorno = get_aleaciones()
    return jsonify(retorno)

@bp.route('/<int:aleacion_id>', methods=['GET'])
def get(aleacion_id):
    return jsonify(get_aleacion(aleacion_id))

@bp.route('/', methods=['POST'])
def create():
    data = request.get_json()
    nombre_aleacion = data['nombre_aleacion']
    simbolo_aleacion = data['simbolo_aleacion']
    descripcion_aleacion = data['descripcion_aleacion']
    return jsonify(create_aleacion(nombre_aleacion, simbolo_aleacion, descripcion_aleacion))

@bp.route('/<int:aleacion_id>', methods=['PUT'])
def update(aleacion_id):
    data = request.get_json()
    nombre_aleacion = data['nombre_aleacion']
    simbolo_aleacion = data['simbolo_aleacion']
    descripcion_aleacion = data['descripcion_aleacion']
    return jsonify(update_aleacion(nombre_aleacion, simbolo_aleacion, descripcion_aleacion, aleacion_id))

@bp.route('/<int:aleaciones_id>', methods=['DELETE'])
def delete(aleaciones_id):
    return jsonify(delete_aleacion(aleaciones_id))
