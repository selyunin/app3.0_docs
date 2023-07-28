Python package ``coinespy``
###################################################

.. contents:: Table of Contents
    :depth: 5
    :backlinks: top

COINES SDK comes with a python package ``coinespy`` which is a python
wrapper around the C library ``libcoines``.
The ``coinespy`` package allows to invoke the C functions of the
``libcoines``, which can:

* configure the application board to an appropriate mode, and

* read the sensor registers over I2C or SPI.

The package can be installed directly from either COINES SDK or from `PyPI`_.


Install coinespy
=============================================


Installing from COINES SDK
--------------------------------------

1. Create conda environment:

.. code-block:: bash

    conda create -n app-board-v3 python=3.11

2. Compile the COINES C library, in the ``app3.0_coines`` repo:

.. code-block:: bash

    cmake -S cmake_pc -B cmake_pc/build
    cmake --build cmake_pc/build

As an output, the static library ``libcoines-pc.a``


3. In the `coines-api/pc/python`_ directory of the `app3.0_coines`_ repo invoke:

.. code-block:: bash

    conda activate app-board-v3
    python -m pip install --no-cache-dir -e ./

Installing from PyPI
--------------------------------------

2. Use pip to download and install the coines package from PyPI:

.. code-block:: bash

    python -m pip install coinespy


Check coinespy installed correctly
=============================================

In the ``python`` console, copy-paste the following python code:

.. code-block:: python

    from coinespy import UserApplicationBoard
    app = UserApplicationBoard()

If C-library is found and loaded, the statements above should execute without error.
If installation is not successful, the command above will exist with an error message.


Use coinespy
=============================================

See the `coines-api/pc/python/test`_ and `coines-api/pc/python/examples`_ to get familiar how `coinespy` can be used.


.. _PyPI: https://pypi.org/project/coinespy/

.. _coines-api/pc/python: https://github.com/selyunin/app3.0_coines/tree/master/coines-api/pc/python

.. _app3.0_coines: https://github.com/selyunin/app3.0_coines

.. _coines-api/pc/python/examples: https://github.com/selyunin/app3.0_coines/tree/master/coines-api/pc/python

.. _coines-api/pc/python/test: https://github.com/selyunin/app3.0_coines/tree/master/coines-api/pc/python