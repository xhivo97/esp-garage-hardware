**NOTE:** The hardware is in its early development. This is meant to replace your garage opener, if you'd like to use this with your existing garage door opener only slight modifications are needed. As of now relays control the motor, in the future there will be a motor driver circuit integrated on the PCB.

# Hardware for esp-garage

ESP32-C3 based garage opener PCB.

You can find the firmware [here](https://github.com/xhivo97/esp-garage-firmware)

## Possible issues

If you build this and the board resets when pulling high currents you may need to add a capacitor between `IN+` and `IN-`.

## TO-DO List

- [ ] Hardware modifications.
    > Add input protection.

    > Add USB polyfuse and ESD protection.

    > Add on-board LEDs and remove the light relay.

    > Add motor controller circuit and remove relays A and B.

    > Add light sensor GPIO connector.

    > Integrate batteries on the PCB, if 4 cells are not enough consider external battery packs instead. 