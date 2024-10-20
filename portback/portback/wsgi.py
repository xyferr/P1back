"""
WSGI config for portback project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/4.2/howto/deployment/wsgi/
"""

import os

import sys

# Add the portback directory to the Python path
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

# from portback import app as application

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'portback.settings')

application = get_wsgi_application()
