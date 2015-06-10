#!/bin/awk -f
#erro_strip.awk
#to call:error_strip.awk <filename>
#strips out the ERROR* lines if there are more than one
#ERROR* lines after each failed record.

BEGIN {error_line=""}
#tell awk the whole is "ERROR*"
{if ($0 == "ERROR*" && error_line == "ERROR*")

#go to next line
{next}
  error_line = $0; print }
