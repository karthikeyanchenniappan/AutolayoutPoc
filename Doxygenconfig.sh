#!/bin/sh

if ! [ -f $SOURCE_ROOT/doxygen.config ]

then

echo doxygen config file does not exist

/usr/bin/doxygen -g $SOURCE_ROOT/doxygen.config

fi

cp $SOURCE_ROOT/doxygen.config $TEMP_DIR/doxygen.config

echo "PROJECT_NAME = Vixlet" >> $TEMP_DIR/doxygen.config

echo "PROJECT_NUMBER = 1.0" >> $TEMP_DIR/doxygen.config


echo "CREATE_SUBDIRS= YES" >> $TEMP_DIR/doxygen.config

echo  "ABBREVIATE_BRIEF = "The $name class" \

"The $name widget" \

"The $name file" \

is \

provides \

specifies \

contains \

represents \

a \

an \

the" >> $TEMP_DIR/doxygen.config


echo "_OUTPUT= VixletDocumentation"
echo "JAVADOC_AUTOBRIEF= YES" >> $TEMP_DIR/doxygen.config

echo  "INHERIT_DOCS= NO">> $TEMP_DIR/doxygen.config

echo "EXTRACT_ALL= YES ">> $TEMP_DIR/doxygen.config

echo  "EXTRACT_LOCAL_METHODS  = YES">> $TEMP_DIR/doxygen.config

echo  "FILE_PATTERNS = *.h \
*.hh \
*.m \
*.md \
*.java \
*.mm " >> $TEMP_DIR/doxygen.config

echo "RECURSIVE = YES" >> $TEMP_DIR/doxygen.config


echo "INPUT = $SOURCE_ROOT" >> $TEMP_DIR/doxygen.config

echo "OUTPUT_DIRECTORY = $SOURCE_ROOT/" >> $TEMP_DIR/doxygen.config
echo "HTML_OUTPUT= VixletDocumentation"
echo "GENERATE_TREEVIEW= YES" >> $TEMP_DIR/doxygen.config
echo "GENERATE_LATEX=NO" >> $TEMP_DIR/doxygen.config
echo "WARNINGS= NO" >> $TEMP_DIR/doxygen.config
echo "WARN_IF_DOC_ERROR= NO" >> $TEMP_DIR/doxygen.config


#  Run doxygen on the updated config file.

#  Note: doxygen creates a Makefile that does most of the heavy lifting.



/usr/bin/doxygen $TEMP_DIR/doxygen.config


exit 0
