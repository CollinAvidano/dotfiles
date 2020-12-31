import os
import os.path
import sys
import re

def main():
    if len(sys.argv) < 2:
        path = os.path.abspath(os.getcwd())
    else:
        path = os.path.abspath(sys.argv[1])
    files = os.listdir(path)

    regex_remove = re.compile(r"(\(|\)|,)") # remove parenthesis and commas
    regex_decram = re.compile(r"([a-z])([A-Z]|\d)") # add a dash between the transisition of a lower case letter to an uppercase letter
    regex_digit = re.compile(r"(\d)([a-z])") # add a dash between the transisition of a digit to a lower case letter
    regex_nodash = re.compile(r"(_|\s)") # replace any non dash whitespace and underscores with a dash
    regex_postfix = re.compile(r"(\d)\-(st|nd|rd|th)(\-|$)") # fix anything like 3rd or 5th
    regex_multidash = re.compile(r"(-){2,}") # remove two or more dashes with 1


    for f in files:
        new_filename = regex_remove.sub("", f)
        new_filename = regex_decram.sub(r"\1-\2", new_filename)
        new_filename = regex_digit.sub(r"\1-\2", new_filename)
        new_filename = regex_nodash.sub("-", new_filename)
        new_filename = new_filename.lower()
        new_filename = regex_postfix.sub(r"\1\2\3", new_filename)
        new_filename = regex_multidash.sub("-", new_filename)
        os.rename(os.path.join(path, f), os.path.join(path, new_filename))

if __name__ == "__main__":
    main()
