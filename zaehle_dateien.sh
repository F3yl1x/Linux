#!/bin/bash

Anzahl=$(tree |wc -l)

echo "$(($Anzahl -3))"

return 0
