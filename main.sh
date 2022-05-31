
sh install.sh

echo "Enter the service name w/o space"
read serviceName
echo "Enter the artifact Name"
read artifactId
echo "Enter SB for Spring Boot and SW for Spring WebFlux"
read type
echo "Base directory to create the project(default is the current folder)"
read folder

echo "$type"
if [ "$type" == "SB" ]
then
  mvn archetype:generate -DarchetypeGroupId=com.pinelabs -DarchetypeArtifactId=QuickStartSpringWeb -DarchetypeVersion=0.0.1 -DgroupId=com.pinelabs -DartifactId=$artifactId -DclientApp=$serviceName -Dversion=0.0.1 -DinteractiveMode=false -DclientAppTest=$serviceName'Test'
else
  mvn archetype:generate -DarchetypeGroupId=com.pinelabs -DarchetypeArtifactId=QuickStartSpringWebFlux -DarchetypeVersion=0.0.1 -DgroupId=com.pinelabs -DartifactId=$artifactId -DclientApp=$serviceName -Dversion=0.0.1 -DinteractiveMode=false -DclientAppTest=$serviceName'Test'
fi
echo $Home

if [ $folder != '' ]
then
  mv $artifactId $folder
fi

echo "project created succesfully!"