Bosch Application Board 3.0
=====================================

.. contents:: Table of Contents
    :depth: 5
    :backlinks: top

This is an **unofficial**, **open source**, **community written** documentation
in order to get started with the `Bosch Sensortec Application Board 3.0`_.
The board is platform for evaluating the Bosch Sensortec internal sensors,
like IMUs, magnetometers, etc.

---------------------------------
Required equipment
---------------------------------

In order to get started one needs:

* `Bosch Sensortec Application Board 3.0`_;

* Shuttle board (e.g. `BMI088`_);

* Micro-USB cable;

* Linux / Windows computer with USB port;


--------------------------------------------
Application board 3.0 overview
--------------------------------------------

One can conceptually split the communication with a digital sensor (e.g. IMU) into the following phases:
* initialization phase, where a sensor is configured into an appropriate operation regime,
* measurement phase, where a sensor provides a digital representation (bit-vector), and
physical value of interest (e.g. angular velocity) can be restored with a known conversion formula.


The `Bosch Sensortec Application Board 3.0`_ consists of (1) micro-controller (MCU), (2) power circuitry,
(3) flash memory, and other components which we omit now for clarity.
Micro-controller communicates with sensors both using SPI and I2C, activates or deactivates the sensor power.


--------------------------------------------
1. Application Board 3.0 hardware overview
--------------------------------------------

The `Bosch Sensortec Application Board 3.0`_ uses the following components:

* `NINA-B302`_, a stand-alone Bluetooth 5 low energy module with antenna from `u-blox`_.
  The module is a small PCB where the `nRF52840`_ SoC from `Nordic Semiconductor`_ (ARM Cortex M4 MCU + FPU)
  is placed together with antenna, the so-called PIFA, Planar Inverted F-Antenna;



.. _NINA-B302: https://www.u-blox.com/en/product/nina-b30-series-open-cpu-0

.. _Bosch Sensortec Application Board 3.0: https://www.bosch-sensortec.com/software-tools/tools/application-board-3-0/

.. _BMI088: https://www.bosch-sensortec.com/media/boschsensortec/downloads/shuttle_board_flyer/application_board_3_1/bst-bmi088-sf000.pdf

.. _u-blox: https://www.u-blox.com/en

.. _nRF52840: https://www.nordicsemi.com/Products/nRF52840

.. _Nordic Semiconductor: https://www.nordicsemi.com/