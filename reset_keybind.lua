-- reset_keybind.lua

--  A utility keybind for adding SHIFT+R reset all mods


local button={
    type = "custom-input",
    name = "reload-keybind",
    key_sequence = "SHIFT + R",
    consuming = "none"
}
data:extend{button}