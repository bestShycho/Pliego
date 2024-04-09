#!/bin/bash

#Para analizar el código:
pmd check -d ./ -R rulesets/java/quickstart.xml -f text -r report.txt

# Para compilar y ejecutar SOLO el kernel:
mvn clean install -f ./pom.xml -Dmaven.tomcat.home=/opt/tomcat >> maven_kernel.log

