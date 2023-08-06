#! /bin/bash

folderToSearch='.github'

echo 'Creando carpeta .github/\n'
mkdir -p .github/
echo 'Configurando workflows...\n'
cp -r parentRepository/ useFolder
mv useFolder/ .github/workflows
rm -rf .github/workflows/.github
echo -e '\nConfiguracion completa.'
exit 1
