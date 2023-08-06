#! /bin/bash

folderToSearch='.github'
urlParentWorkflow='Por favor agregue el submodulo con el siguiente comando:\n\ngit submodule add git@github.com:FAMAF-resources/parentRepository.git .github\n\nLuego vuelva a correr el script.'

for file in $(ls -a); do
  if [ -d $file ] && [ $file = $folderToSearch ]; then
    echo 'Archivo .github encontrado. Configurando workflows...'
    cp -r parentRepository/ useFolder
    mv useFolder/ .github/workflows
    echo -e '\nConfiguracion completa.'
    exit 1
  fi
done

echo -e $urlParentWorkflow
