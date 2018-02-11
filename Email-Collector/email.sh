

#!/bin/bash
#
# ---------------------------------
# TBH && IrIsT EMail Collector  
# Licence : Linux
# ---------------------------------
#
# Title   : TBH && IrIsT EMail Collector 
# Code    : Bash 
# Author  : RedH4t.Viper
# Email   : RedH4t.Viper@Gmail.com , RedH4t.Viper@yahoo.com
# Date    : 2013 09 May
# Thanks  : IrIsT ,TBH ,kurdhackteam , 3xp1r3
#
# Gr33tz  : Am!r | C0dex | B3HZ4D | TaK.FaNaR | 0x0ptim0us | Net.W0lf | 
# Gr33tz  : Skote_Vahshat| Dj.TiniVini| Mr.XHat | Black King |
# Gr33tz  : E2MAEN | Mr.F@RDIN | M4st3r4N0nY | ICA_r00t | m3hdi |
# Gr33tz  : x3o-1337 | rEd X | No PM  | Gabby | Sukhoi Su-37
# Gr33tz  : ARTA | H-SK33PY | (^_^) | Turk Sever | And All Of IrIsT Memebrz
#------------------------------------------------------------------------------------------#
page=0
last_page_check=
how_many=1
single_page=
Domain=$1

Usage()
{
 echo ""
 echo "# ****************************************************************************************************#"
 echo "# Usage      : TBH EMail Collector <domain>                                                          *#"
 echo "# Help       : -h && --help : Show This Menu                                                         *#"
 echo "# RunScript  : Give Permision to script and run it !!                                                *#"
 echo "# ****************************************************************************************************#"
 echo ""
}

# check for arguments 
if [ -z "$Domain" ] || [ "$Domain" == "-h" ] || [ "$Domain" == "--help" ]; then
Usage;
exit 
fi

 while [ -z "$last_page_check" ] && [ -n "$how_many" ] && [ -z "$single_page" ]; do

 url="http://www.bing.com/search?q=%27%40$Domain%27&qs=n&pq=%27%40$Domain%27&sc=0-0&sp=-1&sk=&first=${page}1&FORM=PERE7"

 wget -q -O page.php "$url"


 last_page_check=`egrep -o '<span class="sb_count" id="count">[0-9]+-([0-9]+) of (\1)' page.php`

# if no results are found, how_many is empty and the loop will exit
 how_many=`egrep -o '<span class="sb_count" id="count">[^<]+' page.php | cut -d '>' -f 2|cut -d ' ' -f 1-3`

#  check for a single page of results
 single_page=`egrep -o '<span class="sb_count" id="count">[0-9] results' page.php`

 cat page.php | egrep -o "[-A-Za-z0-9_.]+<strong>@$Domain</strong>" | tr '[:upper:]' '[:lower:]' | sort | uniq>>mails.lst 

 rm -f page.php 
 let page=$page+1 
 done

cat mails.lst | cut -d '<' -f 1 | tr '[:upper:]' '[:lower:]' | sort | uniq >> nmail.lst

found_N=`wc -l nmail.lst | sed 's/nmail.lst//'` 
echo -e "\e[1;34m [+] $found_N Email Collocted :) \e[0m" 

for ec in `cat nmail.lst`
do
echo "[*] $ec@$Domain" >> Collected.lst   
done 


for ec in `cat nmail.lst`
do
echo -e "\e[1;32m[*] $ec@$Domain \e[0m"   
done 

rm -rf mails.lst
rm -rf nmail.lst   
