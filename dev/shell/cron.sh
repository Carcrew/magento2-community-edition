#!/bin/sh
# Copyright © 2015 Magento. All rights reserved.
# See COPYING.txt for license details.

CRONSCRIPT="../../cron.php"
PHP_BIN=`which php`
if  ! ps auxwww | grep " $CRONSCRIPT" | grep -v grep | grep -v cron.sh 1>/dev/null 2>/dev/null ; then
    $PHP_BIN $CRONSCRIPT &
fi
