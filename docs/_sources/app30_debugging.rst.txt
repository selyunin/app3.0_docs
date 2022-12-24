Firmware debugging for Application board 3.0
===================================================

.. contents:: Table of Contents
    :depth: 5
    :backlinks: top


------------------------------------
BST board debugger connector
------------------------------------

.. _DEBUG_CONNECTOR:

`APP 3.0 Debug connector`
#####################################

The 10-pin ARM SWD connector
can be used with 9-pin Cortex M adapter from `Segger`_.

.. _Segger: https://www.segger.com/products/debug-probes/j-link/accessories/adapters/9-pin-cortex-m-adapter/

.. table:: **SWD Connector pin-out**

    +-----------------------------------------+-----------------------------------------+
    | **Left Side**                           | **Right Side**                          |
    +--------------------+--------------------+--------------------+--------------------+
    | **Pin number**     | **Signal / Line**  | **Pin number**     | **Signal / Line**  |
    +--------------------+--------------------+--------------------+--------------------+
    | **1**              | 1.8V               | **2**              | SWDIO              |
    +--------------------+--------------------+--------------------+--------------------+
    | **3**              | GND                | **4**              | SWDCLK             |
    +--------------------+--------------------+--------------------+--------------------+
    | **5**              | GND                | **6**              | SWDO               |
    +--------------------+--------------------+--------------------+--------------------+
    | **7**              | Not connected      | **8**              | Not connected      |
    +--------------------+--------------------+--------------------+--------------------+
    | **9**              | GND                | **10**             | MCU RESET          |
    +--------------------+--------------------+--------------------+--------------------+

.. image:: img/app30_debugger_connector.png
  :width: 250
  :alt: Board debugger connector



.. _SEGGER_9_PIN:

SEGGER Adapter Cortex M
#####################################

The 9-pin adapter from SEGGER for the Cortex-M MCUs
has the following pinout:


.. table:: **9-pin SEGGER Adapter Cortex-M**

    +-----------------------------------------+-----------------------------------------+
    | **Left Side**                           | **Right Side**                          |
    +--------------------+--------------------+--------------------+--------------------+
    | **Pin number**     | **Signal / Line**  | **Pin number**     | **Signal / Line**  |
    +--------------------+--------------------+--------------------+--------------------+
    | **1**              | VTref              | **2**              | SWDIO/TMS          |
    +--------------------+--------------------+--------------------+--------------------+
    | **3**              | GND                | **4**              | SWDCLK/TCK         |
    +--------------------+--------------------+--------------------+--------------------+
    | **5**              | GND                | **6**              | SWDO/TDO           |
    +--------------------+--------------------+--------------------+--------------------+
    | **7**              | Not connected      | **8**              | TDI                |
    +--------------------+--------------------+--------------------+--------------------+
    | **9**              | Not connected      | **10**             | nRESET             |
    +--------------------+--------------------+--------------------+--------------------+

.. image:: img/J-Link_9-pin_Cortex-M_500x.webp
  :alt: Adapter photo

.. image:: img/J-Link_9-pin_Cortex-M_Adapter.png
  :alt: Adapter pinout

The 9-pin adapter shown above is connected to the
standard 20-pin SEGGER connector:


.. image:: img/jlink-20pin-connector.svg
  :width: 200
  :alt: JLink 20-pin adapter