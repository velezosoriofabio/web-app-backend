import functools
from flask import Blueprint, request, jsonify
from flask_cors import CORS
from model.materiales import (
    get_materiales,
    get_material,
    create_material,
    update_material,
    delete_material,
)

bp = Blueprint('materiales', __name__, url_prefix='/materiales')
CORS(bp)

@bp.route('/', methods=['GET'])
def list():
    retorno = get_materiales()
    return jsonify(retorno)

@bp.route('/<int:id_material>', methods=['GET'])
def get(material_id):
    return jsonify(get_material(material_id))

@bp.route('/', methods=['POST'])
def create():
    data = request.get_json()
    nombre_material = data['nombre_material']
    simbolo_material = data['simbolo_material']
    categoria_material = data['categoria_material']
    descripcion_material = data['descripcion_material']
    return jsonify(create_material(nombre_material, simbolo_material, categoria_material, descripcion_material))

@bp.route('/<int:id_material>', methods=['PUT'])
def update(material_id):
    data = request.get_json()
    nombre_material = data['nombre_material']
    simbolo_material = data['simbolo_material']
    categoria_material = data['categoria_material']
    descripcion_material = data['descripcion_material']
    return jsonify(update_material(nombre_material, simbolo_material, categoria_material, descripcion_material, material_id))

@bp.route('/<int:id_material>', methods=['DELETE'])
def delete(material_id):
    return jsonify(delete_material(material_id))
