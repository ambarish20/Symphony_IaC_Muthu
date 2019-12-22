#! /bin/bash
###

_exit ()
{
  [ $? -ne 0 ] && exit 1
}

_check_directory ()
{
  if [ ! -d $1 ]
  then
    echo "ERROR: The Directory: $1 is missing."
    echo "       Please contact Administrator."
    return 1
  fi
}
 

CWD=`pwd`
REPO_BASE="$CWD/../.."
for DIR in Conductor Packer Source Terraform
do
  _check_directory $DIR
  _exit
done

###
###
###
for YAML_FILE in `find $REPO_BASE -name "*.yaml" -print`
do
  echo -e "\n"
  YAML_FILE_NAME=`basename $YAML_FILE`
  YAML_FILE_PATH=`dirname $YAML_FILE`
  RESOURCE_TYPE=`echo $FILE_NAME |awk -F. '{print $1}' |awk -F_ '{print $NF}'`
  $BASE_DIR/Conductor/bin/yaml2tfvars_$RESOURCE_TYPE.sh $YAML_FILE
done
###
###
### 


