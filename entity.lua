---@meta

---@class entity
---A reference to a Principia object.
entity = {}

---Added in **1.3**
---
---Returns the unique ID of the current entity.
---
---@return number
function entity:get_id() end

---Added in **1.3**
---
---Returns the type ID of the current entity.
---
---@return number
function entity:get_g_id() end

---Added in **1.3**
---
---Returns the position of the current entity.
---
---@return number, number
function entity:get_position() end

---Added in **1.3**
---
---Returns the angle of the current entity, in radians.
---
---@return number
function entity:get_angle() end

---Added in **1.5.2**
---
---Sets the angle of the entity, in radians. Only works on entities that are either completely free or attached to a hinge.
---
---@param angle number
function entity:set_angle(angle) end

---Added in **1.3**
---
---Returns the linear velocity of the current entity.
---
---@return number, number
function entity:get_velocity() end

---Added in **1.3**
---
---Returns the angular velocity of the current entity.
---
---@return number
function entity:get_angular_velocity() end

---Added in **1.3**
---
---Returns the approximate width and height of the object.
---
---@return number, number
function entity:get_bbox() end

---Added in **1.4**
---
---Returns the layer of the current entity.
---
---@return number
function entity:get_layer() end

---Added in **1.4**
---
---Returns the world coordinates converted from the given local coordinates from the current entity.
---
---@param lx number
---@param ly number
---@return number, number
function entity:local_to_world(lx, ly) end

---Added in **1.4**
---
---Returns the local coordinates converted from the given world coordinates in relation to the current entity.
---
---@param wx number
---@param wy number
---@return number, number
function entity:world_to_local(wx, wy) end

---Added in **1.4**
---
---Highlight the entity.
---
function entity:highlight() end

---Added in **1.5**
---
---Only works on destructible objects or creatures.
---
---NOTE: Entering a negative amount will heal the object or creature.
---
---@param amount number
function entity:damage(amount) end

---Added in **1.5**
---
---Returns true if the entity is a static object (unable to move), otherwise false.
---
---@return boolean
function entity:is_static() end

---Added in **1.5**
---
---Absorbs the entity if possible. The value returns indicates whether the absorb was completed successfully.
---
---@param follow_connections boolean
---@return boolean
function entity:absorb(follow_connections) end

---Added in **1.5**
---
---Apply torque to the entity.
---
---@param torque number
function entity:apply_torque(torque) end

---Added in **1.5**
---
---Sets the linear velocity of the given entity.
---
---@param x number
---@param y number
function entity:set_velocity(x, y) end

---Added in **1.5**
---
---Warps the entity to the given x/y world coordinates and layer. If the third argument is unset(layer), the layer will not be changed.
---
---@param wx number
---@param wy number
---@param layer number
function entity:warp(wx, wy, layer) end

---Added in **1.5**
---
---Shows the entity if it was previously hidden.
---
function entity:show() end

---Added in **1.5**
---
---Hides the entity if it was previously visible. It will still interact with the world even though it's hidden.
---
function entity:hide() end

---Added in **1.5.2**
---
---Returns whether the entity is currently hidden or not.
---
---@return boolean
function entity:is_hidden() end

---Added in **1.5**
---
---Returns the name of the given entity.
---
---@return string
function entity:get_name() end

---Added in **1.5**
---
---Returns true if the given entity is a creature.
---
---@return boolean
function entity:is_creature() end

---Added in **1.5**
---
---Returns true if the given entity is any kind of robot.
---
---@return boolean
function entity:is_robot() end

---Added in **1.5**
---
---Returns true if the given entity is the current player.
---
---@return boolean
function entity:is_player() end

---Added in **1.5**
---
---Returns the mass of the entity.
---
---@return number
function entity:get_mass() end

---Added in **1.5**
---
---Returns the average density of all fixtures of the given entity.
---
---@return number
function entity:get_density() end

---Added in **1.5**
---
---Returns the average friction of all fixtures of the given entity.
---
---@return number
function entity:get_friction() end

---Added in **1.5**
---
---Returns the average restitution of all fixtures of the given entity.
---
---@return number
function entity:get_restitution() end

---Added in **1.5**
---
---Sets the color of the given entity, if possible. Does not work will all entities.
---
---NOTE: This function should be used sparingly due to its performance cost, especially when used on pixels.
---
---@param r number
---@param g number
---@param b number
function entity:set_color(r, g, b) end

---Added in **1.5**
---
---Detach all connections from the entity.
---
function entity:disconnect_all() end

---Added in **1.5**
---
---Sets the target ID of the given entity. Currently only usable with the robot manager.
---
---@param target_id number
function entity:set_target_id(target_id) end

---Added in **1.5**
---
---If the entity is a LuaScript object, call the specified function.
---
---@param func_name string
function entity:call(func_name, ...) end