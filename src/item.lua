local roseGarden = table.deepcopy(data.raw["lab"]) -- Copied the LabPrototype into the roseGarden Variable to create an object.

roseGarden.name = "Roman Lab"
roseGarden.icons = {
    {
        icon = roseGarden.icon,
        tin = {r=1,g=0,b=0,a=0.3}
    },  
}

roseGarden.energy_usage = "10W"

local recipe = table.deepcopy(data.raw["furnace"]["stone-furnace"]) -- copies the stone furnace recipe
recipe.enabled = true
recipe.name = "Roman Lab"
recipe.ingredients = {{"wood",50},{"stone",50}}
recipe.result = "Roman Lab"

data:extend{roseGarden,recipe}