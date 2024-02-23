---@meta

---@class this
---`this: is a reference to the unique LuaScript object itself. `this` is a **global** object.
this = {}

---Added in **1.3**
---
---Writes the value to the given OUT-socket. Values will be clamped between 0.0 and 1.0.
---
---**NOTE:** this:should only be called ---once per step.
---@param socket_id number
---@param value number
function this:write(socket_id, value) end

---Added in **1.3**
---
---Reads the value from the given IN-socket.
---@param socket_id number
---@return number value
function this:read(socket_id) end

---Added in **1.5**
---
---Returns true if the given IN-socket has a plug attached to it.
---@param socket_id number
---@return boolean
function this:has_plug(socket_id) end

---Added in **1.3.0.2**
---
---Writes the value to the given frequency. Values will be clamped between 0.0 and 1.0.
---
---**NOTE:** this:should only be called once per step.
---@param frequency number
function this:write_frequency(frequency, value) end

---Added in **1.4**
---
---Starts listening on the given frequency.**NOTE:** Must be called in the init-function.
---@param frequency number
function this:listen_on_frequency(frequency) end

---Added in **1.4**
---
---Reads the value from the given frequency.
---
---**NOTE:** this:listen_on_frequency() must have been called for the frequency before this is used.
---@param frequency number
---@return number value
function this:read_frequency(frequency) end

---Added in **1.3.0.2**, deprecated since **1.5**
---
---Returns true if the current step is called in the first run.
---@deprecated since="1.5"
---@return boolean
function this:first_run() end

---Added in **1.3.0.2**
---
---Returns the position of the LuaScript object.
---@return number wx, number wy
function this:get_position() end

---Added in **1.4**
---
---Returns the unique ID of the LuaScript object.
---@return number id
function this:get_id() end

---Added in **1.4**
---
---Returns the resolution Principia is currently running at.
---@return number width, number height
function this:get_resolution() end

---Added in **1.4**
---
---Returns the current screen ratio as a fraction (: `window_width / window_height`).
---@return number ratio
function this:get_ratio() end

---Added in **1.3.0.2**
---
---Sets the current blending mode used for drawing sprites.
---- `0` = 0ff
---- `1` = Mode A 
---- `2` = Mode B
---@param blend_mode number
function this:set_sprite_blending(blend_mode) end

---Added in **1.3.0.2**
---
---Sets the current filter mode used for drawing sprites.
---- `0` = Nearest
---- `1` = Linear
---@param filter_mode number
function this:set_sprite_filtering(filter_mode) end

---Added in **1.3.0.2**
---
---Sets the color of a sprite texel.
---@param x number
---@param y number
---@param r number
---@param g number
---@param b number
---@param a number
function this:set_sprite_texel(x, y, r, g, b, a) end

---Added in **1.4**, latest update **1.5**
---
---Clears all texels. From 1.5 it can now take a clear value. (: 0-255) end
---@param clear_value number
function this:clear_texels(clear_value) end

---Added in **1.4**
---
---Sets the color for future sprite draws. (: `this.set_sprite_tint` in 1.3.0.2) end
---@param r number
---@param g number
---@param b number
---@param a number
function this:set_draw_tint(r, g, b, a) end

---Added in **1.4**
---
---Sets the Z-value for future sprite draws. (: `this.set_sprite_z` in 1.3.0.2) end
---@param z_value number
function this:set_draw_z(z_value) end

---Added in **1.5**
---
---Sets the coordinate mode any future sprite draws will use.
---- `0` = World-based coordinates
---- `1` = Screen-based coordinates (: 0,0 to 100,100) end
---- `2` = Local-based coordinates (: Local to LuaScript-object by default, can be changed with the optional parameter local_id) end
---@param coordinate_mode number
---@param local_id number
function this:set_draw_coordinates(coordinate_mode, local_id) end

---Added in **1.3.0.2**
---
---Draws a sprite with the given parameters.
---@param x number
---@param y number
---@param rotation number
---@param width number
---@param height number
---@param texel_from_x number
---@param texel_from_y number
---@param texel_to_x number
---@param texel_to_y number
function this:draw_sprite(x, y, rotation, width, height, texel_from_x, texel_from_y, texel_to_x, texel_to_y) end

---Added in **1.4**
---
---Draws a line with the given parameters.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param width number
function this:draw_line(x1, y1, x2, y2, width) end

---Added in **1.5**
---
---Draws a gradient line with the given parameters. The color of the first point will be the one set in `this:set_draw_tint()`, and the second point will be the values given in the function parameters.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param width number
---@param r number
---@param g number
---@param b number
---@param a number
function this:draw_gradient_line(x1, y1, x2, y2, width, r, g, b, a) end

---Added in **1.5**
---
---Draws a 3d line with the given parameters.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param width number
function this:draw_line_3d(x1, y1, z1, x2, y2, z2, width) end

---Added in **1.5**
---
---Draws a 3D gradient line with the given parameters. The color of the first point will be the one set in `this:set_draw_tint()`, and the second point will be the values given in the function parameters.
---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param width number
---@param r number
---@param g number
---@param b number
---@param a number
function this:draw_gradient_line_3d(x1, y1, z1, x2, y2, z2, width, r, g, b, a) end

---Added in **1.5**
---
---Returns the color for the given sprite texel.
---@param x number
---@param y number
---@return number r, number g, number b, number a
function this:get_sprite_texel(x, y) end

---Added in **1.5**
---
---Initialized the drawing functionality for the current LuaScript object with the width and height specified.
---- Minimum width or height: 1
---- Maximum width or height: 1024
---- Width and height MUST be a power-of-two.
---@param width number
---@param height number
function this:init_draw(width, height) end

---Added in **1.5**
---
---Sets the color of a static sprite texel. X and Y must be within 0 and the (: width/height)-1 specified in `this.init_draw()`.
---@param x number
---@param y number
---@param r number
---@param g number
---@param b number
---@param a number
function this:set_static_sprite_texel(x, y, r, g, b, a) end

---Added in **1.5**
---
---Clears all static texels to the given color. If no colors are specified, `0x7F` will be set for all channels.
---@param r number
---@param g number
---@param b number
---@param a number
function this:clear_static_texels(r, g, b, a) end

---Added in **1.5**
---
---Adds a sprite to be rendered with the given parameters. this:only needs to be called once per sprite, because it will persist until this.clear_static_sprites() is called.
---@param x number
---@param y number
---@param rotation number
---@param width number
---@param height number
---@param texel_from_x number
---@param texel_from_y number
---@param texel_to_x number
---@param texel_to_y number
function this:add_static_sprite(x, y, rotation, width, height, texel_from_x, texel_from_y, texel_to_x, texel_to_y) end

---Added in **1.5**
---
---Removes all sprites that have been previously added with `this:add_static_sprite()`.
function this:clear_static_sprites() end