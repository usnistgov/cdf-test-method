CURRENT_SCRIPT=$0
#CURRENT_SCRIPT="$(readlink -f "$0")"  #resolves symlinks on unix based systems (Does not work on BSD systems like MacOS)

if [ "$2" != "-silent" ]
then
    echo NIST Voting 🗳️  Program - Common Data Format Test Method
     echo Version 1.0.0beta5 using...
fi
MORGANA_HOME=$(dirname $CURRENT_SCRIPT)
MORGANA_LIB=$MORGANA_HOME/libraries/*
XERCES_PATH=$MORGANA_HOME/libraries/xercesImpl.jar
#Settings for JAVA_AGENT: Only for Java 8 we have to use -javaagent.
JAVA_AGENT=""

JAVA_VER=$(java -version 2>&1 | sed -n ';s/.* version "\(.*\)\.\(.*\)\..*".*/\1\2/p;')

if [ $JAVA_VER = "18" ]
then
	JAVA_AGENT=-javaagent:$MORGANA_HOME/libraries/quasar-core-0.7.9.jar
fi

# All related jars are expected to be in $MORGANA_LIB. For externals jars: Add them to $CLASSPATH
CLASSPATH=$XERCES_PATH:$MORGANA_LIB:$MORGANA_HOME/MorganaXProc-IIIse.jar

java $JAVA_AGENT -cp $CLASSPATH com.xml_project.morganaxproc3.XProcEngine -config=$(dirname $CURRENT_SCRIPT)/config/morgana.xml "$@"
