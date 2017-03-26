name=$(ls -t /Volumes/EOS_DIGITAL/DCIM/101EOS7D/ | head -1 | date "+7D%Y%m%d")
echo $name
date
diskutil rename EOS_DIGITAL $name
hdiutil makehybrid -o $name.iso /Volumes/$name -iso -joliet
date
