brew install poppler

&nbsp; 

nano .zshrc
  

alias pdf\_merge='\[ -f output.txt ] \&\& rm output.txt; for f in \*.pdf; do pdftotext -layout -nopgbrk -q "$f" - >> output.txt; echo "\\n---- $f ----\\n" >> output.txt; echo "$f"; done'

