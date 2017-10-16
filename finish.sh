set -e
project_dir=$(find $PWD -maxdepth 1 -mindepth 1 -type d -not -name ".*")
parent_dir="$(dirname "$project_dir")"

if [ -z "$project_dir" ]
then
  echo "No directory found. Abort"
  exit
fi

cp -t $project_dir Makefile Dockerfile
cd ..
mv $project_dir .
mv $parent_dir /tmp/
