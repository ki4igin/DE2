current_file=$1
echo $1
ext_file=${current_file##*.}
if [[ ${ext_file} != "vhd" ]]; then
    echo ${current_file}
    # exit "uncown format file: ${current_file}"
fi

echo $current_file $ext_file