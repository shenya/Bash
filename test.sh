#!/bin/sh

#hello->world
sed -e 's/hello/world/' 1.txt

#delete < >
<b>This</b> is what <b>I</b> meant.<>
sed -e 's/<[^>]*>//g' 2.txt

#replace /usr/local to /var
sed -e 's:/usr/local:/var:' 1.txt

#replace 
sed -e 's/[0-9]/a/' 2.txt

#ralph said: 123
sed -e 's/.*/ralph said: &/' 2.txt

#print 
sed -n -e '=;p' 2.txt

#append "hello" to 
sed 'ahello' 3.txt

#replace 1 line to 
sed '1chello' 3.txt

#delete third line
sed -i '3d' 3.txt 

# '$' is last line
sed  -n '1,$p' 3.txt 
