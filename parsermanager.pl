#!/usr/bin/perl
sub rowparser($inputstring){
	my ($inputstring) = @_;
	#print "$inputstring \n";
	my @values = split ',', $inputstring;
	if(@values[10] eq 'GALREG'){
		registerrow($inputstring);
	}
	if(@values[10] eq 'GAL'){
		intervalrow($inputstring);
	}
}

sub registerrow($regrow){
	my ($regrow) = @_;
	my @regval = split ',', $regrow;
	print "GALREG \n";
}

sub intervalrow($introw){
	my ($introw) = @_;
	my @intval = split ',', $introw;
	print "INTERVAL \n";
}
1;