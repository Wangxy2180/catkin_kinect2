import os
import argparse

parser = argparse.ArgumentParser(description='check the entry and quit num')
parser.add_argument('--name',dest='file_name',default='output.txt')

cur_path = os.getcwd()
# file_name = 'test.txt'
# file_name = input('input the file name:\n')
file_name=parser.parse_args().file_name
print('cur _path',cur_path)
print('file_name',file_name)

file_path = os.path.join(cur_path,file_name)

file = open(file_path)
lines = file.readlines()

for idx,line in enumerate(lines):
    line_list = line.strip().split(',')
    idx=str(idx).zfill(5)
    print(idx,line_list)
    num_entry = line_list[2]
    num_quitt = line_list[4]

    if num_entry != num_quitt:
        print('\033[31mERROR in num_entry = ',num_entry,'\033[0m')
        break
    if line == lines[-1]:
        print('the last item in list is\n',line)
        print('\033[32mNo errors occurred\033[0m')

print('over')