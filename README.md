# Freelancer Kit
 ./mvnw clean package -DskipTests=true


#run below to generate snapshot-exec.jar file
mvn clean org.jacoco:jacoco-maven-plugin:prepare-agent install -Dmaven.test.failure.ignore=false

