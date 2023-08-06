#! /bin/bash

folderToSearch='.github'

echo -e 'Creando carpeta .github/\n'
mkdir -p .github/
echo -e 'Configurando workflows...\n'
cp -r parentRepository/ useFolder
mv useFolder/ .github/workflows
rm -rf .github/workflows/useFolder/
rm -rf .github/workflows/.github
cp utilsWorkflows/labeler.yml .github/
cp utilsWorkflows/list_auto_assign.yml .github/
echo -e '\nConfiguracion completa.'
exit 1
