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

BOOTLOADER=`getprop ro.boot.bootloader`
OS_VERSION=`echo ${BOOTLOADER:9:1} | tr ABCDEFGHI 123456789`

if [ "$OS_VERSION" -ge 6 ]; then
  echo "I:linkblobs: Bootloader version: $BOOTLOADER, using Android 14 blobs" >> /tmp/recovery.log;
  ln -s /vendor/lib64/hw/sgk-14 /vendor/lib64/hw/gatekeeper.mdfpp.so
  ln -s /vendor/lib64/skm-14 /vendor/lib64/libskeymaster4device.so
  ln -s /vendor/lib64/skm_h-14 /vendor/lib64/libkeymaster_helper.so
elif [ "$OS_VERSION" -ge 4 ]; then
  echo "I:linkblobs: Bootloader version: $BOOTLOADER, using Android 13 blobs" >> /tmp/recovery.log;
  ln -s /vendor/lib64/hw/sgk-13 /vendor/lib64/hw/gatekeeper.mdfpp.so
  ln -s /vendor/lib64/skm-13 /vendor/lib64/libskeymaster4device.so
  ln -s /vendor/lib64/skm_h-13 /vendor/lib64/libkeymaster_helper.so
else
  echo "I:linkblobs: Bootloader version: $BOOTLOADER, using Android 12 blobs" >> /tmp/recovery.log;
  ln -s /vendor/lib64/hw/sgk-12 /vendor/lib64/hw/gatekeeper.mdfpp.so
  ln -s /vendor/lib64/skm-12 /vendor/lib64/libskeymaster4device.so
  ln -s /vendor/lib64/skm_h-12 /vendor/lib64/libkeymaster_helper.so
fi;
