--control.lua

local function printItem(event)
  game.print(event.created_entity.name)
  game.print("build item!")
end

script.on_event(defines.events.on_built_entity,
  function(event) printItem(event) end)


script.on_event("reload-keybind",
  function(event)
    game.print("---Reloading mods---")
    game.reload_mods()
  end
)

