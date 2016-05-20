local teslaIngredients = {}

if (data.raw["recipe"]["basic-electronic-circuit-board"] ~= nil) then
  if(teslaIngredients["basic-electronic-circuit-board"] == nil) then
    teslaIngredients["basic-electronic-circuit-board"] = 0
  end
  teslaIngredients["basic-electronic-circuit-board"] = teslaIngredients["basic-electronic-circuit-board"] + 50
else
  if(teslaIngredients["electronic-circuit"] == nil) then
    teslaIngredients["electronic-circuit"] = 0
  end
  teslaIngredients["electronic-circuit"] = teslaIngredients["electronic-circuit"] + 100
end
if (data.raw["recipe"]["lithium-ion-battery"] ~= nil) then
  if(teslaIngredients["lithium-ion-battery"] == nil) then
    teslaIngredients["lithium-ion-battery"] = 0
  end
  teslaIngredients["lithium-ion-battery"] = teslaIngredients["lithium-ion-battery"] + 25
else
  if(teslaIngredients["battery"] == nil) then
    teslaIngredients["battery"] = 0
  end
  teslaIngredients["battery"] = teslaIngredients["battery"] + 50
end

if (data.raw["recipe"]["gold-plate"] ~= nil) then
  if(teslaIngredients["gold-plate"] == nil) then
    teslaIngredients["gold-plate"] = 0
  end
  teslaIngredients["gold-plate"] = teslaIngredients["gold-plate"] + 10
else
  if(teslaIngredients["steel-plate"] == nil) then
    teslaIngredients["steel-plate"] = 0
  end
  teslaIngredients["steel-plate"] = teslaIngredients["steel-plate"] + 20
end

if (data.raw["recipe"]["titanium-plate"] ~= nil) then
  if(teslaIngredients["titanium-plate"] == nil) then
    teslaIngredients["titanium-plate"] = 0
  end
  teslaIngredients["titanium-plate"] = teslaIngredients["titanium-plate"] + 20
else
  if(teslaIngredients["steel-plate"] == nil) then
    teslaIngredients["steel-plate"] = 0
  end
  teslaIngredients["steel-plate"] = teslaIngredients["steel-plate"] + 40
end

if (data.raw["recipe"]["tungsten-plate"] ~= nil) then
  if(teslaIngredients["tungsten-plate"] == nil) then
    teslaIngredients["tungsten-plate"] = 0
  end
  teslaIngredients["tungsten-plate"] = teslaIngredients["tungsten-plate"] + 10
else
  if(teslaIngredients["steel-plate"] == nil) then
    teslaIngredients["steel-plate"] = 0
  end
  teslaIngredients["steel-plate"] = teslaIngredients["steel-plate"] + 40
end
local ing = {}
for name, c in pairs(teslaIngredients) do
  table.insert(ing, {name, c})  
end
data.raw["recipe"]["tesla-turret"].ingredients = ing
