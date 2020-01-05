#!/usr/bin/env python

language_info = {
    '8086asm': {
        'win32': '.\\win32\\sim_8086.exe',
        'darwin': './darwin/sim_8086',
        'linux': './linux/sim_8086',
        'extensions': ['.asm']
    },
    'c': {
        'win32': '.\\win32\\sim_c.exe',
        'darwin': './darwin/sim_c',
        'linux': './linux/sim_c',
        'extensions': ['.c', '.h']
    },
    'c++': {
        'win32': '.\\win32\\sim_c++.exe',
        'darwin': './darwin/sim_c++',
        'linux': './linux/sim_c++',
        'extensions': ['.c', '.cc', '.cpp', '.h', '.hpp']
    },
    'java': {
        'win32': '.\\win32\\sim_java.exe',
        'darwin': './darwin/sim_java',
        'linux': './linux/sim_java',
        'extensions': ['.java']
    },
    'lisp': {
        'win32': '.\\win32\\sim_lisp.exe',
        'darwin': './darwin/sim_lisp',
        'linux': './linux/sim_lisp',
        'extensions': ['.lsp', '.lisp', '.cl']
    },
    'm2': {
        'win32': '.\\win32\\sim_m2.exe',
        'darwin': './darwin/sim_m2',
        'linux': './linux/sim_m2',
        'extensions': ['.mod']
    },
    'miranda': {
        'win32': '.\\win32\\sim_mira.exe',
        'darwin': './darwin/sim_mira',
        'linux': './linux/sim_mira',
        'extensions': ['.m']
    },
    'pascal': {
        'win32': '.\\win32\\sim_pasc.exe',
        'darwin': './darwin/sim_pasc',
        'linux': './linux/sim_pasc',
        'extensions': ['.pp', '.pas', '.inc']
    },
    'text': {
        'win32': '.\\win32\\sim_text.exe',
        'darwin': './darwin/sim_text',
        'linux': './linux/sim_text',
        # empty means all types of file included
        'extensions': ['']
    }
}
