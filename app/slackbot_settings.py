import os


API_TOKEN = os.environ.get('API_TOKEN', '')
DEFAULT_REPLY = os.environ.get(
    'DEFAULT_REPLY', "Sorry but I didn't understand you")
PLUGINS = os.environ.get('PLUGINS', 'plugins').split(',')
