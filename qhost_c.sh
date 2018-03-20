#
# qhost wrapper to show the list of running containers
#
# Copyright (c) 2018 Akihiro Matsushima
# Released under the MIT license
# http://opensource.org/licenses/mit-license.php
#

function qhost() {
    # emulate fairly POSIX sh in zsh
    $(type "emulate" >/dev/null 2>&1) && emulate -L sh

    if [ $1 = "-c" ]; then
        /opt/qhost_c/qhost_c.py "${@:2:($#-1)}"
    else
        ${SGE_ROOT}/bin/linux-x64/qhost "$@"
    fi
}
