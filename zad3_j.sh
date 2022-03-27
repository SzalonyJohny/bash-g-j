#!/bin/bash
grep "usb" /var/log/kern.log | sort | tail -3
