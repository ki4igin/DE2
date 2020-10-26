#!/bin/bash
############################################################

############################################################
# Functions
############################################################
printOk() {
    echo -e "\e[32m$1\e[0m"  
}
printError() {
    echo -e "\e[31m$1\e[0m"  
}
############################################################
OUT_FILES_DIR="./output_file"
PROJECT_DIR="../"


#
# Create or clean out directory
#
mkdir -p $OUT_FILES_DIR
rm -rf $OUT_FILES_DIR/*

#
# Get the file directory
#
PATH_QPF=$(find $PROJECT_DIR -maxdepth 1 -name *.qpf)
PATH_SOF=$(find $PROJECT_DIR -name *.sof)
PATH_ELF=$(find $PROJECT_DIR -name *.elf)

# Если файл проекта не существует то выходим
if [ -f "$PATH_QPF" ]
then
echo "Path to Project $PATH_QPF"
else
printError "File Project not found"
exit
fi

# Если файл существует то выводим путь, иначе выходим
if [ -f "$PATH_SOF" ]
then
echo "Path to elf file is $PATH_SOF"
else
printError "File sof not found"
exit
fi

# Если файл существует то выводим путь, иначе выходим
if [ -f "$PATH_ELF" ]
then
echo "Path to elf file is $PATH_ELF"
else
printError "File elf not found"
exit
fi

# copy hw.sof
cp $PATH_SOF $OUT_FILES_DIR/hw.sof

# Create hw.flash
sof2flash --input=$PATH_SOF --output=$OUT_FILES_DIR/hw.flash --epcq --verbose

# Create sw.flash
elf2flash --input=$PATH_ELF --output=$OUT_FILES_DIR/sw.flash --epcs --after=$OUT_FILES_DIR/hw.flash –verbose

# Create sw.hex
nios2-elf-objcopy --input-target srec --output-target ihex $OUT_FILES_DIR/sw.flash $OUT_FILES_DIR/sw.hex

echo
printOk "Files Created"