---@meta

---@class creature : entity
---A reference to a Principia creature.
---
---NOTE: Most entity-functions also work on creature, see creature as an extension to entity.
creature = {}

---Returns the HP and max HP of the creature.
---
---Added in 1.5
---@return number, number
function creature:get_hp() end

---Returns the armor and max armor of the creature.
---
---Added in 1.5
---@return number, number
function creature:get_armor() end

---Returns the aim of the current creature, assuming it can aim.
---
---Added in 1.5
---@return number
function creature:get_aim() end

---Sets the weapon arm angle for the creature, if applicable.
---
---Added in 1.5
---@param new_aim number
function creature:set_aim(new_aim) end

---Stop the creature from walking in the given direction. If no direction is given, the creature stops moving in all directions. (left = -1, right = 1, down = 0, up = 2)
---
---Added in 1.5
---@param direction number
function creature:stop(direction) end

---Tell the creature to start moving in the given direction. (left = -1, right = 1, down = 0, up = 2)
---
---Added in 1.5
---@param direction number
function creature:move(direction) end

---Returns true if the creature has their special action activated.
---
---Added in 1.5
---@return boolean
function creature:is_action_active() end

---Toggles the creature's special action on.
---
---Added in 1.5
function creature:action_on() end

---Toggles the creature's special action off.
---
---Added in 1.5
function creature:action_off() end