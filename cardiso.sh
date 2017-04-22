pushd $1
lastfile=$(ls -t | head -1) 
name=$(date -r $lastfile "+7D%Y%m%d")
echo $name
date
diskutil rename $2 $name
popd
hdiutil makehybrid -o $name.iso /Volumes/$2 -iso -joliet
date
