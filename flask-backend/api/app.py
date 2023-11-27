from flask import Flask

def create_app(test_config=None):   
    app = Flask(__name__, instance_relative_config=True)

    from modules.aleaciones import bp as bpaleaciones
    from modules.dispositivo import bp as bpdispositivo
    from modules.materiales import bp as bpmateriales
 
    app.register_blueprint(bpaleaciones)
    app.register_blueprint(bpdispositivo)
    app.register_blueprint(bpmateriales) 

    return app
