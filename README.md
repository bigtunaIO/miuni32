# Miuni32 

![back](rendering-back.png)

## What is it?

A 30%-sized, compact, on-the-go mechanical keyboard PCB for keyboard enthusiasts.

- Ortholinear
- 32 keys (2U space bar or 1U + 1U configurations)
- Atmega32u4 MCU
- SMD components
- 7 + 10 underglow RGB LEDs
- [QMK supported](https://github.com/bigtunaIO/qmk_firmware/)

## Dimensions

## Firmware
### Download official release

Go to the [release page](https://github.com/bigtunaIO/qmk_firmware/releases/tag/miuni32-revision-2) and download `miuni32-default.hex` file.

### Compile from source

Download the official [qmk-firmware](https://github.com/qmk/qmk_firmware) source code before proceeding.

#### Linux

Simply run the following from the top directory:

```bash
$ make miuni32
QMK Firmware 0.6.211              
Making miuni32 with keymap default [OK]        
```

You will find `miuni32_default.hex` in your `qmk_firmware` directory!

### Flash

#### Linux

First, hit the `reset` button on Miuni32. Then run the following commands from the directory you stored the firmware:

```bash
sudo dfu-programmer atmega32u4 erase
sudo dfu-programmer atmega32u4 flash miuni32_default.hex
sudo dfu-programmer atmega32u4 start
```

## Links

* www.bigtuna.io
* www.github.com/bigtunaio