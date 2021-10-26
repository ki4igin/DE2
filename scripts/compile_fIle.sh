current_file=$1

if [[ ${current_file##*.} != "vhd" ]]; then
    echo "unknown format file: ${current_file##*'\'}"    
    exit 0
fi

vlib work
vcom -2008 $current_file |
#  Цветной вывод ошибок и предупреждений
     awk -v "red=$(tput setaf 1)" -v "green=$(tput setaf 2)" \
        -v "yellow=$(tput  setaf 3)"    \
        -v "blue=$(tput  setaf 4)" -v "reset=$(tput sgr0)" '
     { for (i = 1; i <= NF; i++) {
            if ($i == "ERROR") printf "%s", red $i reset;            
            else if ($i == "WARNING") printf "%s", yellow $i reset;
            else printf "%s", $i

            if (i == NF) printf "%s", ORS
            else printf "%s", OFS
       }}'

