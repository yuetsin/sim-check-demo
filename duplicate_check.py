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

from languages import language_info

split_words = ["consists for ", " of"]

args = sys.argv

if len(args) == 4:
    lang = args[1].lower()
    l_path = args[2]
    r_path = args[3]
else:
    print("usage: %s <language> <path_a> <path_b>" % args[0])
    exit(-1)

if not lang in language_info:
    print("Unsupported language %s.\nSupported Languages List:" % lang)
    for name, _ in language_info.items():
        print(" - %s" % name)
    exit(-3)
else:
    current_lang = language_info[lang]
    target_extension = current_lang['extensions']

if sys.platform == 'win32':
    executable = current_lang['win32']
elif sys.platform == 'darwin':
    executable = current_lang['darwin']
elif sys.platform == 'linux':
    executable = current_lang['linux']
else:
    print("unsupported platform %s" % sys.platform)
    exit(-2)


if l_path == r_path:
    print("path_a equals to path_b")
    exit(-4)


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
    l_full = full
    if name in r_files:
        r_full = r_files[name]
        response = os.popen("%s -p %s %s" %
                            (executable, l_full, r_full)).readlines()
        if response != []:
            response = response[-1]
        else:
            continue
        result = re.split('|'.join(split_words), response.replace(
            l_full, '').replace(r_full, ''))
        if len(result) == 3:
            percentage = result[1]
            duplicate_result.append([name, l_full, r_full, percentage])
        else:
            duplicate_result.append([name, l_full, r_full, "N/R"])
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
Similarity Percentage: %s""" % (entry[1], entry[2], entry[0], entry[3]))
