#!/usr/bin/perl
use CGI;

my $cgi = CGI->new;
print $cgi->header;

print <<EOF;
<html>
<head><title>Download Script</title></head>
<body>
<h1>File Download Service</h1>
<p>This is a CGI script that handles file downloads.</p>
<p>Current time: @{[scalar localtime()]}</p>
</body>
</html>
EOF