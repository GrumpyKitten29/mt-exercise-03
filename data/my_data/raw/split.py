

with open('tales_preprocessed.txt', 'r') as infile,\
    open('../test.txt', 'w') as outfile1,\
    open('../valid.txt', 'w') as outfile2,\
    open('../train.txt', 'w') as outfile3:

    text = infile.readlines()

    for i in range(len(text)):
        if i < len(text)/12:
                outfile1.write(text[i])
        elif i < len(text)/12*2:
            outfile2.write(text[i])
        else:
            outfile3.write(text[i])

