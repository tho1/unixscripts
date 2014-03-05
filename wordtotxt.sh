#!/bin/bash

#convert word documents to text for reading purpose.
#where msword is not available.

find . -name '*.doc' | while read i; do
antiword -i 1 "${i}" >"${i/doc/txt}";
done

#&& rm "${i}"; done
