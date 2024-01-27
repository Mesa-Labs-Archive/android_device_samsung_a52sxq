# TWRP Device Tree for Samsung Galaxy A52s 5G

The Galaxy A52s 5G (codenamed _"a52sxq"_) is an upper-mid-range smartphone from Samsung.

It was announced in August 2021 and released in September 2021.

There are also two different variants for Taiwan (a52sxqzt) and Korea (a52sxqks).

## Device specifications

| Feature                        | Specification                                                                             |
| -----------------------------: | :---------------------------------------------------------------------------------------- |
| Chipset                        | Qualcomm SM7325 Snapdragon 778G 5G                                                        |
| CPU                            | Octa-core (1x2.4 GHz Kryo 670 Prime, 3x2.2 GHz Kryo 670 Gold & 4x1.9 GHz Kryo 670 Silver) |
| GPU                            | Qualcomm Adreno 642L                                                                      |
| Memory                         | 6GB / 8GB RAM (LPDDR4X)                                                                   |
| Shipped OS                     | Android 11 (One UI 3.1)                                                                   |
| Storage                        | 128GB / 256GB (UFS 2.1)                                                                   |
| SIM                            | Hybrid Dual SIM (Nano-SIM, dual stand-by)                                                 |
| MicroSD                        | Up to 1TB                                                                                 |
| Battery                        | 4500mAh Li-Ion (non-removable), 25W fast charge                                           |
| Dimensions                     | 159.9 x 75.1 x 8.4 mm (6.30 x 2.96 x 0.33 in)                                             |
| Display                        | 6.5", 1080 x 2400 pixels, 20:9 ratio, Super AMOLED, 120Hz (~405 ppi density)              |
| Rear Camera 1 (IMX682/S5KGW1P) | 64 MP, f/1.8, 26mm (wide), 1/1.7", 0.8µm, PDAF, OIS                                       |
| Rear Camera 2 (S5K3L6)         | 12 MP, f/2.2, 123˚ (ultrawide), 1.12µm                                                    |
| Rear Camera 3 (S5KGW2)         | 5 MP, f/2.4, (macro)                                                                      |
| Rear Camera 4 (S5K3J1)         | 5 MP, f/2.4, (depth)                                                                      |
| Front Camera (IMX616/S5KGD2)   | 32 MP, f/2.2, 26mm (wide), 1/2.8", 0.8µm                                                  |
| Fingerprint                    | EgisTec ET713 (under display, optical)                                                    |
| Sensors                        | Accelerometer, Gyro, Proximity (virtual), Compass, Hall IC, Grip                          |
| Extras                         | Dual speakers, NFC, MST                                                                   |

## Device picture

<img src="https://user-images.githubusercontent.com/13062958/187953480-5eb44d30-247d-4932-9d59-e2d37563ca19.png" width="45%"/>

## Kernel source 

Available at [https://github.com/BlackMesa123/android_kernel_samsung_sm7325/tree/sep-15/twrp-12.1](https://github.com/BlackMesa123/android_kernel_samsung_sm7325/tree/sep-15/twrp-12.1)

## How to build

This device tree was tested and is fully compatible with [minimal-manifest-twrp](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp).

1. Set up the build environment following the instructions [here](https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp/blob/twrp-12.1/README.md#getting-started)

2. In the root folder of the fetched repo, clone the device tree:

```bash
git clone https://github.com/TeamWin/android_device_samsung_a52sxq.git -b android-12.1 device/samsung/a52sxq
```

3. To build:

```bash
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_a52sxq-eng
mka recoveryimage
```

## Copyright

```
#
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
```
