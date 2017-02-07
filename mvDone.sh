FILENAME="duty_`date '+%Y.%m.%d'`.md"
cat README.md | grep '\- \[x\]' >> ${FILENAME}
