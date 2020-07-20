from Assembler_GUI import Ui_MainWindow
from PyQt5 import QtWidgets
import subprocess
import sys
from Assembler import assembler
from filesCompare import compare


def init_data_table():
    for x in range(8192):
        ui.tableWidget_3.setItem(x,0,QtWidgets.QTableWidgetItem(str(x)))
        ui.tableWidget_3.setItem(x,1,QtWidgets.QTableWidgetItem("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"))


def fill_in_data_table(data):
    i = 0
    for x in data:
        ui.tableWidget_3.setItem(i,1,QtWidgets.QTableWidgetItem(x))
        i = i+1


def fill_in_text_table(row_count,textCode,machinecode):

    ui.tableWidget_2.setRowCount(row_count)
    for x in range(row_count):
        ui.tableWidget_2.setItem(x, 0, QtWidgets.QTableWidgetItem(textCode[x]))
        ui.tableWidget_2.setItem(x, 1, QtWidgets.QTableWidgetItem(machinecode[x]))

    ui.tabWidget.setCurrentWidget(ui.Text_Segement)

def fill_in_reg_table(data):
    i = 0
    for x in data:
        ui.tableWidget.setItem(i,1,QtWidgets.QTableWidgetItem(x))
        i = i+1

def assemble_button_function():
    assembly_code = ui.textEdit.toPlainText()
    f = open("instructions.txt", "wt")
    f.write(assembly_code)
    f.close()
    assembler("instructions.txt","machinecode.txt")
    assembly_code = list(assembly_code.split("\n"))
    i = len(assembly_code)
    f = open("machinecode.txt","rt")
    machine_code = f.read()
    f.close()
    f = open(r"C:\Modeltech_pe_edu_10.4a\examples\IM_init",'wt')
    f.write(machine_code)
    f.close()
    machine_code =list(machine_code.split("\n"))
    fill_in_text_table(i,assembly_code,machine_code)
    direc = r"C:\Modeltech_pe_edu_10.4a\examples"
    command = 'vsim -c -do "run -all" work.tb'
    r = subprocess.call(command, cwd=direc, shell=True)
    f = open(r"C:\Modeltech_pe_edu_10.4a\examples\RF",'rt')
    Result = f.read()
    Result = list(Result.split("\n"))
    fill_in_reg_table(Result[0:33])
    fill_in_data_table(Result[33:])

def assemble_button_clicked():
    ui.pushButton.clicked.connect(assemble_button_function)


def run_button_clicked():
    ui.actionAssemble.triggered.connect(assemble_button_function)


def automated_testing_function():
    compare()
    f=open('status_file')
    content = f.read()
    ui.textBrowser.setText(content)
    f.close()
    ui.tabWidget.setCurrentWidget(ui.tab)

def automated_testing_button_clicked():
    ui.pushButton_3.clicked.connect(automated_testing_function)

if __name__ == "__main__":
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    ui.tabWidget.setCurrentWidget(ui.Edit)
    init_data_table()
    assemble_button_clicked()
    run_button_clicked()
    automated_testing_button_clicked()
    MainWindow.show()
    sys.exit(app.exec_())