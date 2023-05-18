#!/bin/env python2
# returns a calendar date for a julian date, or vice versa

import datetime
import sys

arg = sys.argv[1]

if len(arg) > 8:
	date_format = "%m/%d/%Y"
	date_string = datetime.datetime.strptime(arg, date_format)
	julian_date = date_string.strftime("%y%j")
	print(julian_date)
elif len(arg) > 5:
	date_format = "%m/%d/%y"
	date_string = datetime.datetime.strptime(arg, date_format)
	julian_date = date_string.strftime("%y%j")
	print(julian_date)
elif len(arg) == 5:
	date_format = "%y%j"
	date_string = datetime.datetime.strptime(arg, date_format)
	calendar_date = date_string.strftime("%m/%d/%y")
	print(calendar_date)
elif len(arg) == 4:
	date_format = "%j"
	date_string = datetime.datetime.strptime(arg[:3], date_format)
	short_date = date_string.strftime("%m/%d")
	print(short_date)
elif len(arg) == 3:
	date_format = "%j"
	date_string = datetime.datetime.strptime(arg, date_format)
	short_date = date_string.strftime("%m/%d")
	print(short_date)
else:
	print("stop being dumb and put a date.")
