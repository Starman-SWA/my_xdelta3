import re


def generate_ctrl_block_list():
    with open("huawei_patch_debug.txt", "r") as f:
        lines = f.readlines()
        add_list = []
        copy_list = []
        run_list = []
        for line in lines:
            if line.find('ADD') != -1:
                add_list.append(re.split(" |\n", line)[8])
            elif line.find('COPY') != -1:
                copy_inst = []
                copy_inst.append(re.split(" |\n", line)[8])
                copy_inst.append(re.split(" |\n", line)[10])
                copy_list.append(copy_inst)
            elif line.find('RUN') != -1:
                run_list.append(re.split(" |\n", line)[8])
    return add_list, copy_list, run_list


add_list, copy_list, run_list = generate_ctrl_block_list()
print(len(add_list))
print(len(copy_list))
print(len(run_list))