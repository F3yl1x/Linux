#!/bin/bash

Anzahl=$(tree -a |wc -l)

echo "$(($Anzahl -3))"

return 0
