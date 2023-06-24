Shuttle Boards for BST Board 3.0
################################

To detect type of a shuttle board (sensor board) currently plugged in the application
board, each shuttle board (sensor board) has an EEPROM chip DS28E05R+T_, which stores the board ID.

The firmware of the Application Board reads an ID from EEPROM, and "knows"
what type of hardware is plugged in.


.. _DS28E05R+T: https://www.digikey.com/en/products/detail/maxim-integrated/DS28E05R-T/3975551
