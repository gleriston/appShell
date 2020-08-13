#!/bin/sh

zenity --question --text="\nDeseja fazer um backup?!\n";

if [ $? -eq 0 ]
then
    mkdir ~/bkp
cp -rfv /home/gleriston/Documentos/* /home/gleriston/bkp
    zenity --question --text="\nDeseja finalizar o backup?!\n";
    exit 0;
else
    zenity --error --text "Backup cancelado pelo usuário!"
    exit 1;
fi
fi
done
