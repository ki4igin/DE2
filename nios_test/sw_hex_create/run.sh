#!/bin/bash
############################################################

PATH_NIOS2_CMD_SHELL="/c/altera/13.0sp1/nios2eds/nios2_command_shell.sh"
if [ -f "$PATH_NIOS2_CMD_SHELL" ]
then
$PATH_NIOS2_CMD_SHELL ./create.sh
echo
read -p "Press ENTER to exit"
else
echo "Nios2 command shell not found"
exit
fi