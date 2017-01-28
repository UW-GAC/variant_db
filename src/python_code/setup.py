"""Setup.py for the TopMed Variants Database Python Package, tmvariants"""

try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

CONFIG = {
    'description': 'TopMed Variants Database Python Package',
    'author': 'Ben Heavner',
    'url': 'https://github.com/bheavner/tmvariants',
    'download_url': 'https://github.com/bheavner/tmvariants',
    'author_email': 'bheavner@uw.edu',
    'version': '0.1.0.dev1',
    'install_requires': [],
    'packages': ['tmvariants'],
    'scripts': [],
    'name': 'tmvariants'
}

setup(**CONFIG)

