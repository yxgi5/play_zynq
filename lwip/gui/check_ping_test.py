#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import check_ping

def main():
    status = check_ping.check_ping("192.168.1.10")
    print(status)

if __name__ == '__main__':
    main()
