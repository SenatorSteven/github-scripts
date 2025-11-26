
# 2-add-submodule.sh
#
# MIT License
#
# Copyright (C) 2025 Stefanos "Steven" Tsakiris
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

#!/bin/bash

NAME="2-add-submodule.sh";
true=1;
false=0;

function main(){
	[ $true       ] && { local user="";                                                                     } || :;
	[ $true       ] && { local submodule="";                                                                } || :;
	[ $true       ] && { local subdirectory="";                                                             } || :;
	[ $true       ] && { set -e;                                                                            } || :;
	[ "$#" != "3" ] && { printf "$NAME: usage: $NAME [user] [submodule] [subdirectory]\n" 1>&2;   return 1; } || :;
	[ $true       ] && { user="$1";                                                                         } || :;
	[ $true       ] && { submodule="$2";                                                                    } || :;
	[ $true       ] && { subdirectory="$4";                                                                 } || :;
	[ $true       ] && { git submodule add "https://github.com/$user/$submodule" "$subdirectory";           } || :;
	[ $true       ] && { printf "done\n";                                                         return 0; } || :;
}

main "$@";
exit $?;

