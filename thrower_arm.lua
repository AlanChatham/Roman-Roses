--  thrower-arm.lua

-- In order to add constructable things in the world, you need to add
--  and Entity, and to make a recipe for it you have to add BOTH
--    - A recipe
--    - An item for when it exists in your inventory

--
-- Import the base entitry to use
--
local rr_throwerArmEntity = table.deepcopy(data.raw["inserter"]["fast-inserter"])

rr_throwerArmEntity.name = "rose-thrower-arm"
rr_throwerArmEntity.icons = {
    {
        icon = rr_throwerArmEntity.icon,
        tint = {r=1, g=0, b=0,a=0.3}
    },
}
rr_throwerArmEntity.rotation_speed = 20000



--
-- Set up the inventory itemv erions 
--
local rr_throwerArmItem = table.deepcopy(data.raw["item"]["fast-inserter"])

rr_throwerArmItem.name = "rose-thrower-arm"
rr_throwerArmItem.icons = {
    {
        icon = rr_throwerArmItem.icon,
        tint = {r=1, g=0.0, b=0.0,a=0.3}
    },
}
rr_throwerArmItem.subgroup = "inserter"
rr_throwerArmItem.order = "d[inserter]z"
-- IMPORTANT! This is what object gets placed when you try to place the item,
--  and a bunch of stuff with the recipe and such also won't work without this being set
rr_throwerArmItem.place_result = "rose-thrower-arm"


--
-- And finally, give it a recipe
--
local rr_throwerArmRecipe = table.deepcopy(data.raw["recipe"]["fast-inserter"])
rr_throwerArmRecipe.enabled = true
rr_throwerArmRecipe.name = "rose-thrower-arm"
rr_throwerArmRecipe.result = "rose-thrower-arm"

-- add this item to the game data

data:extend{ rr_throwerArmRecipe, rr_throwerArmEntity, rr_throwerArmItem}


