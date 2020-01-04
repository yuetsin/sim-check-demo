#!/usr/bin/env python3

import os
import re
import sys
import enum

try:
    from prettytable import PrettyTable
    PRETTY_PRINT = True
except:
    PRETTY_PRINT = False

args = sys.argv

executable = "./sim_c"
target_extension = ['.c', '.cc', '.cpp', '.h', '.hpp']

split_words = ["consists for ", " of"]

if len(args) == 3:
    l_path = args[1]
    r_path = args[2]
else:
    print("usage: %s <path_a> <path_b>" % args[0])
    exit(-1)

assert(l_path != r_path)


def accessPath(path: str) -> dict:
    file_map = {}
    for root, dirs, files in os.walk(path):
        for file in files:
            for extension in target_extension:
                if file.endswith(extension):
                    file_map.update({file: os.path.join(root, file)})
                    break
    return file_map


l_files = accessPath(l_path)
r_files = accessPath(r_path)

duplicate_result = []

for name, full in l_files.items():
    if name in r_files:
        l_full = full
        r_full = r_files[name]
        response = os.popen("%s -p %s %s" %
                            (executable, l_full, r_full)).read()
        result = re.split('|'.join(split_words), response)
        if len(result) == 3:
            percentage = result[1]

        duplicate_result.append([name, l_full, r_full, percentage])
    else:
        duplicate_result.append([name, l_full, "Not Found", "N/A"])

if PRETTY_PRINT:
    table = PrettyTable(
        ["File Name", "L Path", "R Path", "L consists R Percentage"])
    for entry in duplicate_result:
        table.add_row(entry)
    print(table)
else:
    for entry in duplicate_result:
        print("""===============================
Left File: %s
Right File: %s

Shared Name: %s
Similarity Percentage: %s""" % (entry[0], entry[1], entry[2], entry[3]))
