#!/bin/bash

#Para analizar el código:
pmd check -d ./ -R rulesets/java/quickstart.xml -f text -r report.txt

# Para compilar y ejecutar SOLO el kernel:
mvn clean compile install -f ./pom.xml -Dmaven.tomcat.home=/opt/tomcat > maven_kernel.log

# Ir al directorio
cd $HOME/Escritorio

# Crear directorio para eassybuggy
mkdir apps-externas

# Ir a la carpeta creada
cd apps-externas

# Descrgar repositorio eassybuggy
git clone https://github.com/k-tamura/easybuggy.git

# Para compilar eassybuggy
mvn clean compile -f easybuggy/pom.xml > maven_easybuggy.log
