#
# The contents of this file are subject to the AOLserver Public License
# Version 1.1 (the "License"); you may not use this file except in
# compliance with the License. You may obtain a copy of the License at
# http://aolserver.com/.
#
# Software distributed under the License is distributed on an "AS IS"
# basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
# the License for the specific language governing rights and limitations
# under the License.
#
# The Original Code is AOLserver Code and related documentation
# distributed by AOL.
#
# The Initial Developer of the Original Code is America Online,
# Inc. Portions created by AOL are Copyright (C) 1999 America Online,
# Inc. All Rights Reserved.
#
# Alternatively, the contents of this file may be used under the terms
# of the GNU General Public License (the "GPL"), in which case the
# provisions of GPL are applicable instead of those above.  If you wish
# to allow use of your version of this file only under the terms of the
# GPL and not to allow others to use your version of this file under the
# License, indicate your decision by deleting the provisions above and
# replace them with the notice and other provisions required by the GPL.
# If you do not delete the provisions above, a recipient may use your
# version of this file under either the License or the GPL.
#
# $Header: /Users/dossy/Desktop/cvs/aolserver/tcl/pools.tcl,v 1.5 2008/12/27 00:36:39 gneumann Exp $
#

set cfgsection "ns/server/[ns_info server]"

set minthreads [ns_config $cfgsection minthreads 0]
set maxthreads [ns_config $cfgsection maxthreads 10]
set maxconns [ns_config $cfgsection maxconnections 0]
set timeout [ns_config $cfgsection threadtimeout 0]
set spread [ns_config $cfgsection spread 20]

ns_pools set default -minthreads $minthreads -maxthreads $maxthreads -maxconns $maxconns -timeout $timeout -spread $spread

ns_log notice "default thread pool: [ns_pools get default]"
