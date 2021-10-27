current_dir=$1

files=$(find $current_dir -type f -name "*.vhd")

if [[ -z $files ]]; then
    echo "vhd files not found"
    exit 0
fi

vlib work
vcom -O3 -e 20 -2008 -o $files |
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
