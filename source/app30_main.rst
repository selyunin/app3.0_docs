Bosch Application Board 3.0
=====================================

.. contents:: Table of Contents
    :depth: 5
    :backlinks: top

This is an **unofficial**, **open source**, **community written** documentation
to get started with the `Bosch Sensortec Application Board 3.0`_.
The board is platform for evaluating the Bosch Sensortec sensors
like IMUs, magnetometers, etc.

---------------------------------
Required equipment
---------------------------------

To get started with sensor evaluation one needs:

* `Bosch Sensortec Application Board 3.0`_;

* Shuttle board (e.g. `BMI088`_);

* Micro-USB cable;

* Linux / Windows computer with USB port;



--------------------------------------------
Hardware overview
--------------------------------------------


The `Bosch Sensortec Application Board 3.0`_ consists of:

1. micro-controller (MCU),

2. power circuitry which provides either ``1.8 V`` or ``2.8 V`` to shuttle boards,

3. flash memory,

4. temperature sensor,

5. charger circuitry,

6. IO: 2 buttons, RGB LED, and connectors:

  1. micro-USB
  2. shuttle board connector
  3. SWD debugger connector
  4. battery connector

The list above is not exhaustive and we explicitly omit other components for presentation clarity.
Micro-controller communicates with sensors both using SPI and I2C,
activates or deactivates the sensor power over GPIO.
Refer to the `board schematics`_ provided by Bosch as an ultimate reference.


~~~~~~~~~~~~~~~~~~~~~~
Components
~~~~~~~~~~~~~~~~~~~~~~

The `Bosch Sensortec Application Board 3.0`_ uses the following components:

* `NINA-B302`_, a stand-alone Bluetooth 5 low energy module with antenna from `u-blox`_.
  The module is a small PCB where the `nRF52840`_ SoC from `Nordic Semiconductor`_ (ARM Cortex M4 MCU + FPU)
  is placed together with antenna, the so-called PIFA, Planar Inverted F-Antenna;

* `W25M02GWTBIG`_ ``2 GiB`` Flash memory, which is connected to the MCU over Q-SPI,

* `BQ24230RGTR`_ Li-ion battery charger IC,

* `TMP112AQDRLRQ1`_ temperature sensor connected to the MCU over I2C.


--------------------------------------------
Software overview
--------------------------------------------

To communicate with the board, one needs to:

1. flash the board with the appropriate MCU firmware, and
2. use the PC client software to communicate with the board over USB and read the sensor data
3. use Android app to access the board data over Bluetooth

~~~~~~~~~~~~~~~~~~~~~~
Sensor communication
~~~~~~~~~~~~~~~~~~~~~~

One can conceptually split the communication with a digital sensor (e.g. IMU) into the following phases:

* initialization phase, where a sensor is configured into an appropriate operation regime,

* measurement phase, where a sensor provides a digital representation (bit-vector) of a measured physical value.
  Physical value of interest (e.g. angular velocity in degrees per second) can be obtained
  from a bit-vector using a known conversion formula.




.. _NINA-B302: https://www.u-blox.com/en/product/nina-b30-series-open-cpu-0

.. _Bosch Sensortec Application Board 3.0: https://www.bosch-sensortec.com/software-tools/tools/application-board-3-0/

.. _BMI088: https://www.bosch-sensortec.com/media/boschsensortec/downloads/shuttle_board_flyer/application_board_3_1/bst-bmi088-sf000.pdf

.. _u-blox: https://www.u-blox.com/en

.. _nRF52840: https://www.nordicsemi.com/Products/nRF52840

.. _Nordic Semiconductor: https://www.nordicsemi.com/

.. _W25M02GWTBIG: https://www.winbond.com/resource-files/w25m02gw%20revd%20012219.pdf

.. _board schematics: https://www.bosch-sensortec.com/media/boschsensortec/downloads/software_tools/application_board_3_0/app3-0_schematics.pdf

.. _BQ24230RGTR: https://www.ti.com/product/en-us/BQ24230/part-details/BQ24230RGTR

.. _TMP112AQDRLRQ1: https://www.ti.com/product/TMP112-Q1/part-details/TMP112AQDRLRQ1

