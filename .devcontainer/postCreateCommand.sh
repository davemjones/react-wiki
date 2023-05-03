#!/bin/sh
dev_cert_secret=''
dev_cert_filename=''

while getopts 'f:p:' FLAG; do
    case "${FLAG}" in 
      p) dev_cert_secret="${OPTARG}" ;;
      f) dev_cert_filename="${OPTARG}" ;;
      *) exit 1;;
    esac
done

import_path="/home/vscode/.aspnet/https/"$dev_cert_filename

(cd ClientApp && npm install)
dotnet dev-certs https --clean --import $import_path -p "$dev_cert_secret"