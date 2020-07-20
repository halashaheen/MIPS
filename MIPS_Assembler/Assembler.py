def assembler(input_file,output_file):
    def get_string(string, stringg, current):
        opp = string.split('$')
        oppp = opp[0]
        sum = ""
        for x in oppp:
            if x != " ":
                sum += x
        op = sum

        if op == "add" or op == "and" or op == "slt" or op == "or":
            op_numb = "000000"
            sum1 = ""
            for x in opp[1]:

                if x != " " and x != "," and x != "\n":
                    sum1 += x

            rd = sum1

            rd_numb = get_rd(rd)
            sum2 = ""
            for x in opp[2]:

                if x != " " and x != "," and x != "\n":
                    sum2 += x
            rs = sum2

            rs_numb = get_rd(rs)
            sum3 = ""
            for x in opp[3]:

                if x != " " and x != "," and x != "\n":
                    sum3 += x
            rt = sum3
            rt_numb = get_rd(rt)
            shamt = "00000"
            if (op == "add"):
                func = "100000"
            elif (op == "and"):
                func = "100100"
            elif (op == "slt"):
                func = "101010"
            elif op == "or":
                func = "100101"
            output = op_numb + rs_numb + rt_numb + rd_numb + shamt + func
        elif op == "sll":
            op_numb = "000000"
            rs_numb = "00000"
            func = "000000"
            o = opp[1]
            sum4 = ""
            part1 = o.split(',')
            for x in part1[0]:
                if x != " " and x != "," and x != "\n":
                    sum4 += x
            rd = sum4
            rd_numb = get_rd(rd)
            part2 = opp[2]
            oo = part2.split(',')
            sum5 = ""

            for x in oo[0]:
                if x != " " and x != "," and x != "\n":
                    sum5 += x
            rt = sum5
            rt_numb = get_rd(rt)
            sum6 = ""
            for x in oo[1]:
                if x != " " and x != "," and x != "\n":
                    sum6 += x

            shift = sum6
            numm = int(shift)
            shamt = convert_to_binary5(numm)
            output = op_numb + rs_numb + rt_numb + rd_numb + shamt + func

        elif op == "lw" or op == "sw" or op == "lh" or op == "lb" or op == "sh" or op == "sb" or op == "lhu" or op == "lbu":
            if op == "lw":
                op_numb = "100011"
            elif op == "sw":
                op_numb = "101011"
            elif op == "lh":
                op_numb = "100001"
            elif op == "lb":
                op_numb = "100000"
            elif op == "sh":
                op_numb = "101001"
            elif op == "sb":
                op_numb = "101000"
            elif op == "lhu":
                op_numb = "100101"
            elif op == "lbu":
                op_numb = "100100"
            part3 = opp[1]
            ooo = part3.split(',')
            sum7 = ""
            for x in ooo[0]:
                if x != " " and x != "," and x != "\n":
                    sum7 += x
            rt = sum7
            rt_numb = get_rd(rt)
            sum8 = ""
            for x in ooo[1]:
                if x != " " and x != "," and x != "(" and x != "\n":
                    sum8 += x
            Imm = sum8
            numm = int(Imm)
            Immed = convert_to_binary16(numm)
            sum9 = ""
            for x in opp[2]:
                if x != " " and x != "," and x != ")" and x != "\n":
                    sum9 += x
            rs = sum9
            rs_numb = get_rd(rs)
            output = op_numb + rs_numb + rt_numb + Immed
        elif op == "Jr" or op == "jr":
            op_numb = "000000"
            shamt = "00000"
            rt_numb = "00000"
            rd_numb = "00000"
            func = "001000"
            sum10 = ""
            for x in opp[1]:
                if x != " " and x != "," and x != "\n":
                    sum10 += x

            rs = sum10
            rs_numb = get_rd(rs)
            output = op_numb + rs_numb + rt_numb + rd_numb + shamt + func
        elif op == "addi" or op == "ori":
            if op == "addi":
                op_numb = "001000"
            elif op == "ori":
                op_numb = "001101"
            sum11 = ""
            for x in opp[1]:
                if x != " " and x != "," and x != "\n":
                    sum11 += x
            rt = sum11
            rt_numb = get_rd(rt)
            oooo = opp[2]
            part4 = oooo.split(',')
            sum12 = ""
            for x in part4[0]:
                if x != " " and x != "," and x != "\n":
                    sum12 += x
            rs = sum12
            rs_numb = get_rd(rs)
            sum13 = ""
            for x in part4[1]:
                if x != " " and x != "," and x != "\n":
                    sum13 += x
            Imm = sum13
            numm = int(Imm)
            Immed = convert_to_binary16(numm)
            output = op_numb + rs_numb + rt_numb + Immed
        elif op == "beq":
            currentpc = current
            pcplus4 = currentpc + 4
            s1 = []
            s2 = []
            v = 0
            i = 0
            j = 0
            sum20 = ""
            while j < len(stringg):
                address = 4 * j
                string = stringg[j]
                j += 1
                for x in string:
                    if x == ':':
                        lab0 = string.split(":")
                        stringgg0 = lab0[1]
                        sum20 = ""
                        for x in lab0[0]:
                            if x != " " and x != ",":
                                sum20 += x
                        lable0 = sum20
                        s1.append(lable0)
                        s2.append(address)
            op_numb = "000100"
            sum15 = ""
            for x in opp[1]:
                if x != " " and x != "," and x != "\n":
                    sum15 += x
            rs = sum15
            rs_numb = get_rd(rs)
            oooo = opp[2]
            part4 = oooo.split(',')
            sum16 = ""
            for x in part4[0]:
                if x != " " and x != "," and x != "\n":
                    sum16 += x
            rt = sum16
            rt_numb = get_rd(rt)
            sum17 = ""
            for x in part4[1]:
                if x != " " and x != "," and x != "\n":
                    sum17 += x
            labl = sum17
            sum50 = ""
            con = ""
            for s in labl:

                if s != " " and s != "\n":
                    sum50 += s
                    con = s
            labl2 = sum50

            p = 0
            adrs = 0
            tara = ""
            while p < len(s1):
                tara = s1[p]
                if (labl2 == tara):
                    adrs = s2[p]
                p += 1

            # print("pp",adrs)
            Im = (int)((adrs - pcplus4) / 4)
            # print(Im)
            Immed = bindigits(Im, 16)
            output = op_numb + rs_numb + rt_numb + Immed
        nono = string.split(' ')
        non = nono[0]
        sum100 = ""
        if non == "j" or non == "jal":
            # print("popo")
            if (non == "j"):
                op_numb = "000010"
            elif (non == "jal"):
                op_numb = "000011"

            for x in nono[1]:
                if x != " " and x != "\n":
                    sum100 += x
            label = sum100
            # print(label)
            s1 = []
            s2 = []
            v = 0
            i = 0
            j = 0
            sum200 = ""
            while j < len(stringg):
                address = 4 * j
                string = stringg[j]
                j += 1
                for x in string:
                    if x == ':':
                        lab0 = string.split(":")
                        stringgg0 = lab0[1]
                        sum200 = ""
                        for x in lab0[0]:
                            if x != " " and x != "," and x != "\n":
                                sum200 += x
                        lable0 = sum200
                        s1.append(lable0)
                        s2.append(address)
            sum500 = ""
            con0 = ""
            for s in label:

                if s != " " and s != "\n":
                    sum500 += s
                    con0 = s
            labl20 = sum500
            # print(labl20)
            p = 0
            adrs = 0
            tara = ""
            while p < len(s1):
                tara = s1[p]
                if (labl20 == tara):
                    adrs = s2[p]
                p += 1

            # print("ppo", adrs)
            immed = bindigits(adrs, 32)
            Imme = str(immed)
            A = Imme[4:30]
            output = op_numb + A

        return output

    def bindigits(n, bits):
        s = bin(n & int("1" * bits, 2))[2:]
        return ("{0:0>%s}" % (bits)).format(s)

    def convert_to_binary5(x):
        c = format(x, '05b')
        return c

    def convert_to_binary16(x):
        c = format(x, '016b')
        return c

    def get_rd(rd):
        global rd_num
        if rd == "0," or rd == "zero" or rd == "0;" or rd == "0":
            rd_num = "00000"
        elif rd == "t0":  # 8
            rd_num = "01000"
        elif rd == "t1":  # 9
            rd_num = "01001"
        elif rd == "t2":  # 10
            rd_num = "01010"
        elif rd == "t3":  # 11
            rd_num = "01011"
        elif rd == "t4":  # 12
            rd_num = "01100"
        elif rd == "t5":  # 13
            rd_num = "01101"
        elif rd == "t6":  # 14
            rd_num = "01110"
        elif rd == "t7":  # 15
            rd_num = "01111"
        elif rd == "t8":  # 24
            rd_num = "11000"
        elif rd == "t9":
            rd_num = "11001"
        elif rd == "s0":
            rd_num = "10000"
        elif rd == "s1":
            rd_num = "10001"
        elif rd == "s2":
            rd_num = "10010"
        elif rd == "s3":
            rd_num = "10011"
        elif rd == "s4":
            rd_num = "10100"
        elif rd == "s5":
            rd_num = "10101"
        elif rd == "s6":
            rd_num = "10110"
        elif rd == "s7":
            rd_num = "10111"
        elif rd == "a0":
            rd_num = "00100"
        elif rd == "a1":
            rd_num = "00101"
        elif rd == "a2":
            rd_num = "00110"
        elif rd == "a3":
            rd_num = "00111"
        elif rd == "v0":
            rd_num = "00010"
        elif rd == "v1":
            rd_num = "00011"
        elif rd == "ra":
            rd_num = "11111"
        elif rd == "at":
            rd_num = "00001"
        elif rd == "k0":
            rd_num = "11010"
        elif rd == "k1":
            rd_num = "11011"
        elif rd == "gp":
            rd_num = "11100"
        elif rd == "sp":
            rd_num = "11101"
        elif rd == "fp":
            rd_num = "11110"
        return rd_num

    with open(input_file, 'r') as rf:
        with open(output_file, 'w') as wf:
            stringg = rf.readlines()

            # print(len(stringg))
            # print(stringg)
            i = 0
            flag = 0
            con = 0
            while i < len(stringg):
                string = stringg[i]
                i += 1
                # print(string)

                for x in string:
                    if x == ':':
                        flag = 1
                #print(flag)
                if flag == 0:
                    outputt = get_string(string, stringg, con)


                elif flag == 1:
                    lab = string.split(":")
                    # print(lab)
                    stringgg = lab[1]
                    sum14 = ""
                    for x in lab[0]:
                        if x != " " and x != "," and x != "\n":
                            sum14 += x
                    lable = sum14
                    #print("mm",stringgg)
                    if stringgg == "\n" or stringgg == "" or stringgg == " ":
                        break


                    else:
                        outputt = get_string(stringgg, stringg, con)

                    # print(lable)
                    flag = 0
                con += 4

                #outputt = get_string(stringg)

                #print(outputt)

                wf.write(outputt)
                wf.write('\n')

if __name__ == "__main__":
    assembler('instructions.txt','machinecode.txt')