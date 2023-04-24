import sys

with open('tales.txt', 'r', encoding='utf8') as infile, open ('tales_cleaned.txt', 'w', encoding='utf8') as outfile:
    for line in infile.readlines():
        if line.strip() == "":
            continue
        else:
            line = line.replace(u'\ufeff', '')
            line = " ".join(line.split())
            outfile.write(line + "\n")
