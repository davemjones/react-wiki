#!/bin/sh
dev_cert_secret=''

while getopts 'p:' FLAG; do
    case "${FLAG}" in 
      p) dev_cert_secret="${OPTARG}" ;;
      *) exit 1;;
    esac
done

(cd ClientApp && npm install)
dotnet dev-certs https --clean --import /home/vscode/.aspnet/https/aspnetapp.pfx -p "$dev_cert_secret"