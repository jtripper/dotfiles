use strict;                                                   
                                                              
use vars qw($VERSION %IRSSI);                                 
%IRSSI = (                                                    
        authors         => 'jtripper',                        
);                                                            
                                                              
sub log_sender () {                                           
    my ($irc_server, $message, $username, $hostmask) = @_;      
    open(FILE, ">>$ENV{HOME}/.irssi/messages");                 
    print FILE $username . "\n";
    close (FILE);                                               
}                                                             
                                                              
Irssi::signal_add_first('message private', "log_sender");    
