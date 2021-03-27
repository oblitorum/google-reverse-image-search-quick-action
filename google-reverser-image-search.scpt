tell application "Finder" to set theFile to POSIX path of (selection as alias)
set link to do shell script "curl -s -i -F sch=sch -F encoded_image=@" & quoted form of theFile & " https://www.google.com/searchbyimage/upload | grep -Fi location | cut -d ' ' -f2-"
open location link
