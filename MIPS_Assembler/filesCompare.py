import os
from conditions import line_identifier, ishexa
from Assembler import assembler
import subprocess
def compare():
    path_input = r"C:\Users\User\PycharmProjects\MIPS_Assembler\inputs"
    path_output = r"C:\Users\User\PycharmProjects\MIPS_Assembler\outputs"
    f_status_file = open(r"status_file", "w")
    dir_input_list = os.listdir(path_input)
    dir_output_list = os.listdir(path_output)
    for input_files, output_files, i in zip(dir_input_list, dir_output_list, range(10)):
        # send input file to assembler (input file contains the assembly instructions)
        # write code here
        assembler((path_input + '\\' + input_files), r"C:\Modeltech_pe_edu_10.4a\examples\IM_init")
        direc = r"C:\Modeltech_pe_edu_10.4a\examples"
        command = 'vsim -c -do "run -all" work.tb'
        r = subprocess.call(command, cwd=direc, shell=True)
        # get output (reg file an memory content )from modelsim
        # assume modelsim output file
        f = open(r"C:\Modeltech_pe_edu_10.4a\examples\RF", "rt")
        f_output = open(path_output + '\\' + output_files, "rt")

        # output file from mips (to be compared with output of input )
        f_status_file.write("Comparing files \n ---> modelsim_output.txt \n ---> " + dir_output_list[i] + "\n")
        # print("Comparing files ", "---> " + "modelsim_output.txt", "---> " + dir_output_list[i], sep='\n')

        # Print a blank line
        # print()
        f_status_file.write("\n")
        # Read the first line from the files
        f_modelsim_line = f.readline()
        f_output_line = f_output.readline()

        # Initialize counter for line number
        line_no = 1

        # match flag
        flag = 0

        # Loop if either modelsim_output or output has not reached EOF
        while f_modelsim_line != '' or f_output_line != '':

            # Strip the leading whitespaces
            f_modelsim_line = f_modelsim_line.rstrip()
            f_output_line = f_output_line.rstrip()

            # Compare the lines from both file
            if f_modelsim_line != f_output_line:
                if flag == 0:
                    f_status_file.write(dir_output_list[i] + " failed =( because of the following : \n")
                    flag = 1

                x = line_identifier(line_no - 1)
                if ishexa(f_modelsim_line.lower()) and ishexa(f_output_line.lower()):
                    # print("|_______> "+x+" = "+str(f_modelsim_line)+" instead of "+x+" = "+str(f_output_line))
                    # print("|_______> "+"//"+x+" = "+str(int(f_modelsim_line,16))+" instead of "+x+" = "+str(int(f_output_line,16)))
                    # f_status_file.write("1\n")
                    f_status_file.write(
                        "|_______> " + x + " = " + str(f_modelsim_line) + " instead of " + x + " = " + str(
                            f_output_line) + "\n")
                    f_status_file.write("|_______> " + "//" + x + " = " + str(
                        int(f_modelsim_line, 16)) + " instead of " + x + " = " + str(int(f_output_line, 16)) + "\n")
                    f_status_file.write("\n")
                elif ishexa(f_modelsim_line.lower()) and (f_output_line.lower()) == "xxxxxxxx":
                    # print(x + " = " + str(f_modelsim_line) + " instead of " + x + " = " + str(f_output_line))
                    # print("//"+x + " = " + str(int(f_modelsim_line, 16)) + " instead of " + x + " = " + "x")
                    # f_status_file.write("2\n")
                    f_status_file.write(
                        "|_______> " + x + " = " + str(f_modelsim_line) + " instead of " + x + " = " + str(
                            f_output_line) + "\n")
                    f_status_file.write("|_______> " + "//" + x + " = " + str(
                        int(f_modelsim_line, 16)) + " instead of " + x + " = " + "x" + "\n")
                    f_status_file.write("\n")
                elif (f_modelsim_line.lower()) == "xxxxxxxx" and ishexa(f_output_line.lower()):
                    # print(x + " = " + str(f_modelsim_line) + " instead of " + x + " = " + str(f_output_line))
                    # print("//"+x + " = " + "x" + " instead of " + x + " = " +str(int(f_output_line,16)))
                    # f_status_file.write("3\n")
                    f_status_file.write(
                        "|_______> " + x + " = " + str(f_modelsim_line) + " instead of " + x + " = " + str(
                            f_output_line) + "\n")
                    f_status_file.write("|_______> " + "//" + x + " = " + "x" + " instead of " + x + " = " + str(
                        int(f_output_line, 16)) + "\n")
                    f_status_file.write("\n")
                elif ishexa(f_modelsim_line.lower()) and not (ishexa(f_output_line.lower())):
                    # f_status_file.write("4\n")
                    f_status_file.write(
                        "|_______> " + x + " = " + str(f_modelsim_line) + " instead of " + x + " = " + str(
                            f_output_line) + "\n")
                    f_status_file.write("|_______> " + "//" + x + " = " + str(
                        int(f_modelsim_line, 16)) + " instead of " + x + " = " + str(f_output_line) + "\n")
                    f_status_file.write("\n")
                elif not (ishexa(f_modelsim_line.lower())) and ishexa(f_output_line.lower()):
                    # f_status_file.write("5\n")
                    f_status_file.write(
                        "|_______> " + x + " = " + str(f_modelsim_line) + " instead of " + x + " = " + str(
                            f_output_line) + "\n")
                    f_status_file.write(
                        "|_______> " + "//" + x + " = " + str(f_modelsim_line) + " instead of " + x + " = " + str(
                            int(f_output_line, 16)) + "\n")
                    f_status_file.write("\n")
                else:
                    # f_status_file.write("6\n")
                    f_status_file.write(
                        "|_______> " + x + " = " + str(f_modelsim_line) + " instead of " + x + " = " + str(
                            f_output_line) + "\n")
                    f_status_file.write("\n")

            # Read the next line from the file
            f_modelsim_line = f.readline()
            f_output_line = f_output.readline()

            # Increment line counter
            line_no += 1

        # Close the files
        f.close()
        f_output.close()

        if flag == 0:
            f_status_file.write(dir_output_list[i] + " succeed =) \n")
        f_status_file.write(
            "-----------------------------------------------------------------------------------------\n")

    f_status_file.close()

if __name__ == "__main__":
    compare()