#!/usr/bin/perl
require './filemanager.pl';
require './parsermanager.pl';
readconfig();
readinputfile();
openoutputfile();
print "Input file is: $cmepfile \n";
print "Output file is: $stats  \n";
my $row = <$inputfile>;
while(my $row = <$inputfile>){
	chomp $row;
	print $outputfile "$row\n";
	rowparser($row);
	#print "$row\n";
}
closefiles();
