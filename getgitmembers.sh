#!/bin/bash
OUTPUTFILE=githubmembers.xml

#RESULT="`wget -v -O githubmembers.xml "https://bluepages.ibm.com/tools/groups/groupsxml.wss?task=listMembers&group=ww-github"`"
RESULT="`wget -v -O ${OUTPUTFILE}  "https://bluepages.ibm.com/tools/groups/groupsxml.wss?task=listMembers&group=ww-github"`"

if [ -f ${OUTPUTFILE} ]
then
	usercount=`cat $OUTPUTFILE |grep member |wc -l`
	echo $usercount
fi
