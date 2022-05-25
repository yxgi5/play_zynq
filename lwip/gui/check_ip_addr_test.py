#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import check_ip_addr

def main():
    status = check_ip_addr.is_valid_ipv4_address("192.168.1.10")
    print(status)

if __name__ == '__main__':
    main()
