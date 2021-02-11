#!/bin/env bash

uptime | awk '{print substr($8, 1, length($8)-1) " " substr($9, 1, length($8)-1) " " $10}'
