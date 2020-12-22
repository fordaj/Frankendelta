# Duet Infrared Probe
The runner-up candidate of names for this printer would be "Probe Eater" or "Probe Toaster". I've ordered *three* of these [Duet IR Probes](https://www.printedsolid.com/products/duet-ir-probe) for $25 + shipping... and my best guess is that this circuit is not shielded from over-voltage/current conditions. As of 12/22/2020, I fried their V1.3 board when pressing the reset button on my printer to flash a new Marlin build. *This is a working theory, and I will no longer be using the reset button to see if it fries the next probe*. I am switching to this [clone](https://www.amazon.com/gp/product/B07RKTQ53F/ref=ppx_yo_dt_b_asin_title_o01_s00?ie=UTF8&psc=1), which is $15.

### Fried Infrared Transmitter 
- Probe properly blinks 2 times a few seconds after power-on
- Probe does not sense bed/finger/other objects
- Probe IR transmitter is not picked up by digital (phone) camera
- Probe can receive IR transmission from TV remotes, and will illuminate its LED accordingly