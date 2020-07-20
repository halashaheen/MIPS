
def line_identifier(line_no):

    if line_no == 0:
        x = "$zero"
    elif line_no == 1:
        x = "$at"
    elif line_no == 2:
        x = "$v0"
    elif line_no == 3:
        x = "$v1"
    elif line_no >= 4 and line_no <= 7:
        x = "$a" + str(line_no - 4)
    elif line_no >= 8 and line_no <= 15:
        x = "$t" + str(line_no - 8)
    elif line_no >= 16 and line_no <= 23:
        x = "$s" + str(line_no - 16)
    elif line_no == 24:
        x = "$t8"
    elif line_no == 25:
        x = "$t9"
    elif line_no == 26:
        x = "$k0"
    elif line_no == 27:
        x = "$k1"
    elif line_no == 28:
        x = "$gp"
    elif line_no == 29:
        x = "$sp"
    elif line_no == 30:
        x = "$fp"
    elif line_no == 31:
        x = "$ra"
    elif line_no == 32:
        x = "$pc"
    elif line_no >= 33 and line_no <= 8225:
        x = "DM[" + str(line_no - 33) + "]"
    return x



def ishexa(line):
    for bit in line:
        if not(bit.isdigit()) and bit!="a" and  bit!="b" and bit!="c" and bit!="d" and bit!="e" and  bit!="f" :
            return 0
    return 1
