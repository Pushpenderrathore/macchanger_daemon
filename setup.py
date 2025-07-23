# setup.py

from setuptools import setup, find_packages

setup(
    name='macchanger-daemon',
    version='1.0.0',
    description='Daemon to automatically randomize MAC address on boot and reconnection.',
    author='Pushpender Rathore',
    author_email='your_email@example.com',
    url='https://github.com/Pushpenderrathore/macchanger-daemon',
    packages=find_packages(),
    entry_points={
        'console_scripts': [
            'macchanger-daemon=macchanger_daemon.main:main'
        ],
    },
    install_requires=[],
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: POSIX :: Linux',
        'License :: OSI Approved :: MIT License',
    ],
    license='MIT'
)
