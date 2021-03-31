## Installation

Pre-built binaries for all the supported platforms are available for download in the releases

### Install

#### Windows

Decompress the windows Pre-built binary zip into a directory of your choice

Open the created directory

If this is your first install double click on:

`install.bat`

This will install the arduino compiler and the libraries needed to complile the project

Select the install file that meets your os version(32/64bits) and target board (D1 MINI/NodeMCU)

```bash
install.d1_mini.32bits.bat
install.d1_mini.64bits.bat
install.nodemcuv2.32bits.bat
install.nodemcuv2.64bits.bat
```

During install you will be prompted for the `COM Port` number where the ESP board is attached to be used to flash the new Firmware

#### Install (MacOS/Linux)¶

Decompress the zip targeting your platform into a directory of your choice

Open the created directory

If this is your first install run the next command in your shell:

`$> install.sh`

Select the install file that meets your os version(32/64bits) and target board (D1 MINI/NodeMCU)

##### MacOS

```bash
install.d1_mini.sh
install.nodemcuv2.sh
```

##### Linux

```bash
install.d1_mini.32bits.sh
install.d1_mini.64bits.sh
install.nodemcuv2.32bits.sh
install.nodemcuv2.64bits.sh
```

During install you will be prompted for the `PORT` where the ESP board is attached to be used to flash the new Firmware

### Update

#### WiFi

Updates are managed via the provided webUI and are as simple as provide the `firmware.ota` file

#### USB

Just run the second step of the install process for your OS

## Compiling

Compiling is only necesary if you need to make changes to the provided source code

### Dependencies

- [Install NodeJS](https://nodejs.org/en/download/)

### First run

Install the project dependencies

`npm install`

Install the compiler dependencies for your OS

`npm run arduino:install:win`

`npm run arduino:install:osx`

`npm run arduino:install:linux`

This will install the arduino compiler and the libraries and boards needed to complile the project

### Daily Workflow

Make some changes

`npm run dev:[BOARD]:[OS]`

Examples

```dev:d1_mini:osx
dev:nodemcuv2:osx
dev:d1_mini:win
dev:nodemcuv2:win
dev:d1_mini:linux
dev:nodemcuv2:linux
```

This will compile and upload the changes to the ESP board and restart it

    IMPORTANT: GBS-C needs to be in WiFi AP mode to this work

### Release files generation

Depending on yor OS Host System, generate the files to be included in the release running

`npm run releaseOSX`

`npm run releaseWIN`

`npm run releaseLINUX`

Release files can be found in the `/release-files` folder
