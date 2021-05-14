#!/bin/bash -e
exec 2>/dev/null

if ! NAME=$(zenity --entry --text "Name:" --title "New Empty Document"); then
  exit;
fi

dir=$(dirname $NAUTILUS_SCRIPT_SELECTED_FILE_PATHS)

touch $dir/$NAME
