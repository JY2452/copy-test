#  Lab 1 - Bash : Solutions
## Jason Pak, CS50 Winter 2021

Answers for Parts A-F on Lab 1.

### Part A

```shell
$ wget -O scorecard.csv https://data.wa.gov/api/views/wajg-ig9g/rows.csv
```

### Part B

```shell
$ head -n 1 scorecard.csv
```

### Part C

```shell
$ grep "Dartmouth College" scorecard.csv
```

### Part D

```shell
$ cut -d "," -f 4,84 scorecard.csv | sed '1d'
```

### Part E

```shell
$ cut -d "," -f 4,84 scorecard.csv | sed '1d' | sort -nrt ',' -k 2 | head -n 10
```

### Part F

```shell
$ cut -d "," -f 4,84 scorecard.csv | sed '1d' | sort -nrt ',' -k 2 | head -n 10 | sed -e 's/^/|/' -e 's/,/|/' -e 's/$/|/'
```
**Table:**

|Institution|Size|
|--|--:|
|University of Phoenix-Arizona|151558|
|Ivy Tech Community College|77657|
|Miami Dade College|61470|
|Lone Star College System|59920|
|Houston Community College|58084|
|University of Central Florida|52280|
|Liberty University|49340|
|Texas A & M University-College Station|46941|
|American Public University System|44924|
|Ashford University|44744|

