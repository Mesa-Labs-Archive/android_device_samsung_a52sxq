#!/sbin/sh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

mkdir -p "/tmp/vendor";
mount -w "/dev/block/mapper/vendor" "/tmp/vendor";

if [ -f "/tmp/vendor/recovery-from-boot.p" ]; then
  echo "I:postrecoveryboot: Removing stock recovery file in /vendor to prevent the stock ROM from replacing TWRP." >> /tmp/recovery.log;
  rm "/tmp/vendor/bin/install-recovery.sh";
  rm "/tmp/vendor/etc/init/vendor_flash_recovery.rc";
  rm "/tmp/vendor/recovery-from-boot.p";
fi;

umount "/tmp/vendor";
rm -r "/tmp/vendor";

exit 0;
