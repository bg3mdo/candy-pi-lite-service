Device Tree for SC16IS750 & SC16IS752
===

The compiled dtbo file will allocate serial UART interfaces to `/dev/ttySC0` and `/dev/ttySC1` (SC16IS752 only).

- [RPi] sc16is750-spi0-ce0.dts for SC16IS750 via SPI0 with CE/CS=0
- [RPi] sc16is752-spi0-ce0.dts for SC16IS752 via SPI0 with CE/CS=0
- [RPi] sc16is752-spi0-ce1.dts for SC16IS752 via SPI0 with CE/CS=1 (CANDY Pi Lite Board)
- [ATB] sc16is752-spi2-ce1-atb.dts for SC16IS752 via SPI2 with CE/CS=1 (CANDY Pi Lite Board)

Annotations:
 - [RPi] ... For Raspberry Pi
 - [ATB] ... For ASUS Tinker Board

References:

- [Rpi forums:Configure sc16is7xx chip on compute module](https://www.raspberrypi.org/forums/viewtopic.php?t=128892&p=904524)
- [nxp,sc16is7xx.txt](https://github.com/torvalds/linux/blob/v4.4/Documentation/devicetree/bindings/serial/nxp%2Csc16is7xx.txt)
- [sc16is7xx.c](https://github.com/raspberrypi/linux/blob/raspberrypi-kernel_1.20170427-1/drivers/tty/serial/sc16is7xx.c)
- [Device Tree:Specifying interrupt information for devices](https://www.kernel.org/doc/Documentation/devicetree/bindings/interrupt-controller/interrupts.txt)
