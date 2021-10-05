#!/bin/sh
#a simple script with a functinal

add_a_user()
{
     USER_$1
     PASSWORD=$2
     shift; shift;
   #having sgifted twice, the rest is now coments
   COMENTS=$0
   echo "adding user $USER ........."
   echo useradd -c "$COMENTS" $USER
   echo password $USER $PASSWORD
   echo "added user $USER ($COMENTS) with pass $PASSWORD"
   
}

##
##cuerpo de scrip
echo "Comienzo del script........."
add_a_user bob sanchez Bob el constructor 
add_a_user fer badpass2word sacate
add_a_user bilbo badword sds
echo "el final de nuestro script......."
echo "Paz y amor"
