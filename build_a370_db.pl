#!/usr/bin/perl

# Main
use Getopt::Std;
 
getopt('v');


$fail = system("./build.pl  -f spi -v $opt_v -b armada_370_db  -i spi -c -o ");
if($fail){
	print  "\n *** Error: Build u-boot bot from SPI failed\n\n";
	exit;
}

$fail = system("cp u-boot-a370-$opt_v-spi-db.bin /tftpboot/u-boot.bin");
if($fail){
	print  "\n *** Error: Build u-boot bot from SPI failed\n\n";
	exit;
}
	print  "====> copied cp u-boot-a370-$opt_v-spi-db.bin /tftpboot/u-boot.bin \n\n";
