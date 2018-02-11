#!/usr/bin/perl

#WP-Hunter
#4WSec - Anon Cyber Team
#https://github.com/aryanrtm/WP-Hunter
#Thx to: Mohamed Riahi
#14-12-2017


use LWP::UserAgent;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
use URI::URL;
use Getopt::Long;
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (10);

GetOptions(
	"u=s" => \$mek,
);

unless ($mek) { help(); }
if ($mek) { banner(); }



sub banner() {
print q(
                                  
                                  
                                  
      ?@@@@#&@~                   
     @@@e                         
     @@%                          
    `@@e                          
     @@@                          
     @@@@                         
     &@@@@                        
      @@@&@-                      
      `@@+@@@             o       
        @ .@@@@?           @      
       oe   ^@@ @&_        %:     
       @ `   @@i  *.        @     
       !   : @@^o^ `=       @     
        @&@-:  ;- i =&     !@     
         @     _:**  @@#~:@@@     
        %  $ _       `@@@@@@e     
        .         :% %eo@@@.      
       @  i   ^._   : -@`         
       +  :   *     ;   @         
       `       %-O      O         
       =    i !~~*%    !          
       @     ei.      ?*          
       ``     ?!*e.+ ^^           
        $          @_~            
         #                        
          i+      #               
            @` ~%*                
             i@e                  
                                  
          WP-Hunter v1
  by 4WSec - Anon Cyber Team
                                    
);
print "  [*] $mek\n";
user();
Version();
Theme();
Plugin();
}

sub help() {
print " Usage: perl wphunter.pl -u http://site.co.li/";
}
# MENGAMBIL USER
sub user(){
$user = $mek . '/?author=1';

$ucrotser = $ua->get($user)->content;
if($crotuser =~/author\/(.*?)\//){
print "  [#] User: $1\n";
}else{
print "  [#] Tidak Dapat Mengambil Username\n";
}
}

# MENGAMBIL VERSION
sub Version(){
$crotversion = $ua->get($mek)->content;
if($crotversion =~/content="WordPress (.*?)"/) {
print "  [#] Version: $1\n";
}else{
print "  [#] Tidak Dapat Mengambil Version\n";
}
}

# MENGAMBIL TEMA
sub Theme(){
$crotheme = $ua->get($mek)->content;
if($crotheme =~/\/themes\/(.*?)\//){
print "  [#] Theme: $1\n";
}else{
print "  [#] Tidak Dapat Mengambil Theme\n";
}
}

# MENGAMBIL PLUGINS
sub Plugin(){
$crotplugin = $ua->get($mek)->content;

my %seen;
while($crotplugin =~m/\/wp-content\/plugins\/(.*?)\//g){ 
  $plu=$1;
  next if $seen{$plu}++; # already seen
  print "  [#] Plugin: $plu \n";
}
}
