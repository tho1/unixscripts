#!/bin/bash

#convert word documents to text for reading purpose.
#This requires the antiword binary to extract the content.
#where msword is not available.

find . -name '*.doc' | while read i; do
antiword -i 1 "${i}" >"${i/doc/txt}";
done

#&& rm "${i}"; done
