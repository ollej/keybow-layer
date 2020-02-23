require "keybow"

-- Key mappings --

layer = {}
layer.WALKING = { keybow.SPACE, "`", "", "d", "e", "3", "s", "w", "2", "a", "q", "1" }
layer.FIGHTING = { "0", "+", "", "9", "6", "3", "8", "5", "2", "7", "4", "1" }
layer.MENU = { "m", "n", "", "o", "p", "r", "i", "c", "z", "x", "l", keybow.ESC }
layer.layers = { layer.WALKING, layer.FIGHTING, layer.MENU }
layer.cyclekey = 2
layer.current = 1

function switch_layer(pressed)
    if pressed then
        layer.current = layer.current + 1
        if layer.current > #layer.layers then
            layer.current = 1
        end
    end
end

function tap_layer_key(key_id, pressed)
    if key_id == layer.cyclekey then
        switch_layer(pressed)
        return
    end

    key_action = layer.layers[layer.current][key_id+1]
    keybow.set_key(key_action, pressed)
end

function handle_key_00(pressed)
    tap_layer_key(0, pressed)
end

function handle_key_01(pressed)
    tap_layer_key(1, pressed)
end

function handle_key_02(pressed)
    tap_layer_key(2, pressed)
end

function handle_key_03(pressed)
    tap_layer_key(3, pressed)
end

function handle_key_04(pressed)
    tap_layer_key(4, pressed)
end

function handle_key_05(pressed)
    tap_layer_key(5, pressed)
end

function handle_key_06(pressed)
    tap_layer_key(6, pressed)
end

function handle_key_07(pressed)
    tap_layer_key(7, pressed)
end

function handle_key_08(pressed)
    tap_layer_key(8, pressed)
end

function handle_key_09(pressed)
    tap_layer_key(9, pressed)
end

function handle_key_10(pressed)
    tap_layer_key(10, pressed)
end

function handle_key_11(pressed)
    tap_layer_key(11, pressed)
end
