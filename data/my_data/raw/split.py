

with open('tales_preprocessed.txt', 'r', encoding='utf8') as infile,\
    open('../test.txt', 'w', encoding='utf8') as outfile1,\
    open('../valid.txt', 'w', encoding='utf8') as outfile2,\
    open('../train.txt', 'w', encoding='utf8') as outfile3:

    text = infile.readlines()

    for i in range(len(text)):
        if i < len(text)/12:
                outfile1.write(text[i])
        elif i < len(text)/12*2:
            outfile2.write(text[i])
        else:
            outfile3.write(text[i])

