#!/bin/sh
gs -sDEVICE=pdfwrite -dCompatibilityLevel=2.0 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$2 $1
