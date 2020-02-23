keybow-layer
============

A simple Keybow key mapping to allow multiple layers.

Switching is done with one button cycling through all layers.

https://shop.pimoroni.com/products/keybow?variant=21246333190227

Cycle through layers by tapping the bottom right key (configurable).

License
-------

Released under the MIT License. Copyright 2020 Olle Wreede.

Installation
------------

1. Copy the file `layer.lua` to the `layouts` directory on the Keybow SD
   card.

1. Add the following to the end of the `keys.lua` file:

```lua
require "layouts/layer"
```

Configuration
-------------

At the top of the file there are three layers defined:

```lua
layer.WALKING = { keybow.SPACE, "`", "", "d", "e", "3", "s", "w", "2", "a", "q", "1" }
layer.FIGHTING = { "0", "+", "", "9", "6", "3", "8", "5", "2", "7", "4", "1" }
layer.MENU = { "m", "n", "", "o", "p", "r", "i", "c", "z", "x", "l", keybow.ESC }
```

These contain a list of the character each key should trigger. Starting
with the bottom left key. The third string in the list is empty, as it is used
to cycle through layers.

### Adding layers

Adding a layer is as simple as defining a new list of characters, and adding
it to the `layer.layers` array.

```lua
layer.NEW = { "a", "b", "", "c", "d", "e", "f", "g", "h", "i", "j", "k" }
layer.layers = { layer.WALKING, layer.FIGHTING, layer.MENU, layer.NEW }
```

### Changing cycle button

Set the variable `layer.cyclekey` to the number of the key that should cycle
through layers. The character at this position in the layer array will be
ignored, so it may be set to empty string (`""`).

```lua
layer.cyclekey = 0
```

