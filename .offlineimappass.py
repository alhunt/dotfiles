#!/bin/python
from subprocess import check_output

def get_pass():
    return check_output("gpg -dq --use-agent ~/.offlineimappass.gpg", shell=True).strip()

