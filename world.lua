---@meta

---@class world
---World functions. world is a **global** object.
world = {}

---Added in **1.3**
---
---Returns an entity (object) reference or nil if the object does not exist. entity_id refers to the object's unique ID, not the g_id which is the same for each type of object.
---@param entity_id number
---@return table
function world:get_entity(entity_id) end

---Added in **1.3**
---
---Raycasts from start to end. Returns nil if nothing was hit, otherwise returns entity, ptx, pty, norx, nory.
---@param startx number
---@param starty number
---@param endx number
---@param endy number
---@param layer number
---@return table
function world:raycast(startx, starty, endx, endy, layer) end

---Added in **1.4**
---
---Returns a table of entities located within the given coordinates. Layers and sublayers are optional arguments.
---@param min_x number
---@param min_y number
---@param max_x number
---@param max_y number
---@param layer number
---@param sublayers number
---@return table
function world:query(min_x, min_y, max_x, max_y, layer, sublayers) end

---Added in **1.4**
---
---Returns the current X and Y gravity of the world.
---@return number, number
function world:get_gravity() end

---Added in **1.5.2**
---
---Set the gravity of the world.
---@param x number
---@param y number
function world:set_gravity(x, y) end

---Added in **1.5**
---
---Returns the ID that belongs to the Adventure Robot, if it exists.
---@return number
function world:get_adventure_id() end

---Added in **1.5**
---
---Returns the border sizes of the world.
---@return number, number, number, number
function world:get_borders() end

---Added in **1.5**
---
---Converts a global screen point to a world point.
---@param gsx number
---@param gsy number
---@return number, number
function world:get_world_point(gsx, gsy) end

---Added in **1.5**
---
---Sets the background color to the given values.
---
---NOTE: Only works if you're using a colored background in the first place.
---@param r number
---@param g number
---@param b number
function world:set_bg_color(r, g, b) end

---Added in **1.5**
---
---Sets the ambient light color to the given values.
---@param intensity number
function world:set_ambient_light(intensity) end

---Added in **1.5**
---
---Sets the diffuse light of the world to the given value.
---@param intensity number
function world:set_diffuse_light(intensity) end
