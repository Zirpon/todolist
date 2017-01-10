FILENAME="duty_`date '+%Y.%m.%d'`.md"
if [ ! -f ${FILENAME} ];then
    touch ${FILENAME}
    echo "${FILENAME} create success"
else
    echo "${FILENAME} already exists"
fi

#KKK="test_`date '+%Y.%m.%d-%H%M'`.txt"
#touch ${KKK};
