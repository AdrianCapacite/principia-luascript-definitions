---@meta

---@class cam
---Controls the player's camera. cam is a **global** object.
cam = {}

---Added in **1.3**
---
---Returns the X, Y and Z coordinates of the camera.
---@return number x, number y, number z
function cam:get_position() end

---Added in **1.3**
---
---Returns the X, Y and Z velocity of the camera.
---@return number x, number y, number z
function cam:get_velocity() end

---Added in **1.3**
---
---Sets the position of the camera.
---@param x number
---@param y number
---@param z number
function cam:set_position(x, y, z) end

---Added in **1.3**
---
---Sets the velocity of the camera.
---@param x number
---@param y number
---@param z number
function cam:set_velocity(x, y, z) end

---Added in **1.3**
---
---Tells the game to follow the entity using the given properties.
---
---```lua
---cam:follow_entity(world:get_entity(entity_id), true, true)
---```
---@param entity table
---@param do_snap boolean
---@param preserver_position boolean
function cam:follow_entity(entity, do_snap, preserver_position) end

---Added in **1.3**
---
---Tells the game to follow the entity using the given properties.
---
---```lua
---cam:follow_entity_by_id(entity_id, true, true)
---```
---@param entity_id number
---@param do_snap boolean
---@param preserver_position boolean
function cam:follow_entity_by_id(entity_id, do_snap, preserver_position) end

---Added in **1.3**
---
---Returns the fraction of the players current zoom. 0.0 being fully zoomed in, 1.0 being fully zoomed out.
---@return number zoom
function cam:get_zoom() end