#!/bin/bash

dd if=/dev/random bs=4 count=1 status=none | od -A none -t u4