#!/bin/sh

CURNAME="myVM1"
NEWNAME="myVM2"

find -type f -name "*$CURNAME*" | sed -e "p;s/$CURNAME/$NEWNAME/" | xargs -n2 mv

sed -i "s/$CURNAME/$NEWNAME/g" $NEWNAME.vmdk
sed -i "s/$CURNAME/$NEWNAME/g" $NEWNAME.vmx
sed -i "s/$CURNAME/$NEWNAME/g" $NEWNAME.vmxf
sed -i "s/$CURNAME/$NEWNAME/g" *.log
