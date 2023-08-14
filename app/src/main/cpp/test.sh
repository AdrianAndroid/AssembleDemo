string="/Volumes/wd/yijincc/Assemble/AssembleDemo/app/src/main/"
#filename="${string#*/}"
#directory111="${string%/*}"
#echo $filename
#echo $directory111
#echo $filename
#new_string="${directory111}/${filename}"
#new_string=$(echo $new_string)
#echo $new_string

filepath=$string
filename=$(basename "$filepath")
filename_without_extension="${filename%.*}"
directory111=$(dirname "$filepath")
echo "-------"
echo "$directory111"
echo "-------------"
# shellcheck disable=SC2164
cd "$directory111"
ls
cd -
echo "提取的文件名是： $filename_without_extension"