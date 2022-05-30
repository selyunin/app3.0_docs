Firmware update with DFU
###################################################

.. contents:: Table of Contents
    :depth: 5
    :backlinks: top


BST Board App Development Desktop Firmware
=============================================

The application board 3.0 can be programmed with different firmware.
The default firmware programmed to the application board 3.0
is intended to be used with the "Development Desktop V2.0"
Windows desktop software provided by Bosch Sensortec.

The default firmware consists of two parts:

1. the application part and
2. the bootloader part.

.. role:: red

Application part of firmware
--------------------------------------

The application firmware controls the pins of the shuttle board connector, enables
power supply, configures whether SPI or I2C protocol shall be used, configures the sensor on the shuttle board
in an appropriate regime, grabs the data from the sensor and transfers it over the USB interface.
When the application firmware is running the MCU LED D1 turns :red:`RED`.
The application firmware starts by default when the board is powered ON.

Bootloader part of firmware
--------------------------------------

The bootloader part of firmware is used to update the application firmware with a new version.
When the board in the bootloader mode, the MCU LED D1 turns :blue:`BLUE`.
To put the board into the bootloader mode the board shall be powered with the T2 button pressed.
The ``T2`` button is connected to ``SWITCH2`` signal of the `Application Board 3.0`_, which in turn ``GPIO_7`` of the
`NINA-B302`_, the ``P0.25`` pin of the `nRF52840`_

Activate bootloader mode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* power the board OFF by turning ON/OFF power switch to OFF;

* press the ``T2`` button;

* with the ``T2`` button pressed, turn the board ON by turning the ON/OFF power switch to ON;

* observe the :blue:`BLUE` LED turns ON. If the MCU D1 LED does not turn :blue:`BLUE`, this means bootloader
  is not active, repeat the process.


USB configuration
====================================

Depending on operation mode of the device (application, bootloader), the `Application Board 3.0`_ presents itself
as different device on the USB bus, with different vendor and product IDs.

Application firmware configuration
--------------------------------------

In the application mode, the device present itself with "Thesycon Systemsoftware & Consulting GmbH",
VID=108c, PID=ab3d, Class=CDC Data, 12M.


Bootloader firmware configuration
--------------------------------------

In the bootloader mode, the device present itself with "Robert Bosch GmbH",
VID=152a, PID=80c0, Class=Application Specific Interface, 12M.


DFU firmware update
====================================




.. _NINA-B302: https://www.u-blox.com/en/product/nina-b30-series-open-cpu-0

.. _Application Board 3.0: https://www.bosch-sensortec.com/software-tools/tools/application-board-3-0/

.. _nRF52840: https://www.nordicsemi.com/Products/nRF52840
