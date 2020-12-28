import fileinput
import sys

filename = sys.argv[1]
text_to_search = sys.argv[2]
replacement_text = sys.argv[3]

with fileinput.FileInput(filename, inplace=True, backup='.bak') as file:
    for line in file:
        print(line.replace(text_to_search, replacement_text), end='')
