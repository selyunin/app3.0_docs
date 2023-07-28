Firmware update
###################################################

.. contents:: Table of Contents
    :depth: 5
    :backlinks: top


BST Board App Development Desktop Firmware
=============================================

The application board 3.0 can be programmed with different firmware.
The default firmware programmed to the application board 3.0
is intended to be used with the "`Development Desktop V2.0`_"
Windows desktop software provided by Bosch Sensortec.

The default firmware consists of three parts:

1. the application part and
2. the bootloader part,
3. the MTP (media transfer protocol) part

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

The bootloader part of firmware is used to upgrade the application firmware with a new version.
When the board in the bootloader mode, the MCU LED D1 turns :blue:`BLUE`.
To put the board into the bootloader mode the board shall be powered with the T2 button pressed.
The ``T2`` button is connected to ``SWITCH2`` signal of the `Application Board 3.0`_, which in turn ``GPIO_7`` of the
`NINA-B302`_, the ``P0.25`` pin of the `nRF52840`_.

Activate bootloader mode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* power the board OFF by turning ON/OFF power switch to OFF;

* press the ``T2`` button;

* with the ``T2`` button pressed, turn the board ON by turning the ON/OFF power switch to ON;

* observe the :blue:`BLUE` LED turns ON. If the MCU D1 LED does not turn :blue:`BLUE`, this means bootloader
  is not active, repeat the process.

MTP part of firmware
--------------------------------------

The media transfer protocol (MTP) part of firmware presents a board as a memory device,
and uses the ``2 GiB`` W25M02GWTBIG_ flash memory chip to store the data.
When the board in the bootloader mode, the MCU LED D1 turns :green:`GREEN`.
MTP mode can be activated the board is powered with the ``T1`` button pressed.
The ``T1`` button is connected to ``SWITCH1`` signal of the `Application Board 3.0`_, which in turn ``GPIO_33`` of the
`NINA-B302`_, the ``P1.09`` pin of the `nRF52840`_.

Activate MTP mode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* power the board OFF by turning ON/OFF power switch to OFF;

* press the ``T1`` button;

* with the ``T1`` button pressed, turn the board ON by turning the ON/OFF power switch to ON;

* observe the :green:`GREEN` LED turns ON. If the MCU D1 LED does not turn :green:`GREEN`, this means MTP mode
  is not active, repeat the process.


USB configuration
====================================

Depending on operation mode of the device (application, bootloader), the `Application Board 3.0`_ presents itself
as different device on the USB bus, with different vendor and product IDs.

Application firmware configuration
--------------------------------------

In the application mode, the board present itself as

* **"Thesycon Systemsoftware & Consulting GmbH"**, ``VID=108c``, ``PID=ab3d``, ``Class=CDC Data, 12M``.


Bootloader firmware configuration
--------------------------------------

In the bootloader mode, the board present itself as

* **"Robert Bosch GmbH"**, ``VID=152a``, ``PID=80c0``, ``Class=Application Specific Interface, 12M``.


MTP firmware configuration
--------------------------------------

In the MTP mode, the board present itself as

* **"Robert Bosch GmbH APP3.0 Board(MTP)"**, ``VID=108c``, ``PID=ab3f``, ``Class=Vendor Specific Class, 12M``.

USB speed
--------------------------

From the USB configurations above, we see that the application board 3.0
is the **USB 1.1** *full-speed* device with maximum signalling rate of ``12 Mbits/s``.


Firmware modes with app_switch
================================

The ``app_switch`` tool is a part of the COINES software package.
The ``app_switch`` can be used to change the firmware mode from application mode
to either bootloader or from application to MTP mode.


Change the mode from application to bootloader:

.. code-block:: bash

   ./app_switch usb_dfu_bl

alternatively:

.. code-block:: bash

   ./app_switch 0x0


Change the firmware from application to MTP:


.. code-block:: bash

   ./app_switch usb_mtp

alternatively:

.. code-block:: bash

   ./app_switch 0x28000


DFU firmware update
====================================

`Device Firmware Upgrade`_ (DFU) is a `USB specification`_


.. _NINA-B302: https://www.u-blox.com/en/product/nina-b30-series-open-cpu-0

.. _Application Board 3.0: https://www.bosch-sensortec.com/software-tools/tools/application-board-3-0/

.. _nRF52840: https://www.nordicsemi.com/Products/nRF52840

.. _Device Firmware Upgrade: https://en.wikipedia.org/wiki/USB#Device_Firmware_Upgrade_mechanism

.. _USB specification: https://www.usb.org/sites/default/files/DFU_1.1.pdf

.. _dfu-util page: https://dfu-util.sourceforge.net/

.. _Development Desktop V2.0: https://www.bosch-sensortec.com/software-tools/tools/development-desktop-software/

.. _W25M02GWTBIG: https://www.winbond.com/resource-files/w25m02gw%20revd%20012219.pdf