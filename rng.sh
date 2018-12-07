#!/bin/bash

dd if=/dev/urandom bs=4 count=1 status=none | od -A none -t u4
