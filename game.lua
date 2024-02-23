---@meta

---@class game
---A global object containing various *game*-stuff. game is a **global** object.
game = {}

---Added in **1.3**, Latest update **1.3.0.3**
---
---Shows the given number on the screen for debugging.
---
---From **1.3.0.3** and onward, it can take a `num_decimals` argument which specifies with what precision the number should be printed.
---@param number number
---@param num_decimals number
function game:show_numfeed(number, num_decimals) end

---Added in **1.3.0.2**
---
---Finish the game with the desired win state:
---- `1` = win
---- `0` = lose
---@param win_state number
function game:finish(win_state) end

---Added in **1.3.0.2**
---
---Modifies the current score. Use a negative number to decrease the score.
---@param score_mod number
function game:add_score(score_mod) end

---Added in **1.3.0.2**
---
---Sets the current score.
---@param new_score number
function game:set_score(new_score) end

---Added in **1.3.0.2**
---
---Returns the current score.
---@return number score
function game:get_score() end

---Added in **1.3.0.2**
---
---Activate RC Control of an entity using its object fetched with world:get_entity().
---@param entity table
function game:activate_rc(entity) end

---Added in **1.3.0.2**
---
---Activate RC Control of an entity using its ID.
---@param entity_id number
function game:activate_rc_by_id(entity_id) end

---Added in **1.4**
---
---Outputs a toast message on the screen. Duration:
---- `0` = Short
---- `1` = Long
---@param message string
---@param duration number?
function game:message(message, duration) end

---Added in **1.4**
---
---Gets the world coordinates for the cursor in the given layer.
---@param layer number
---@return number wx, number wy
function game:get_cursor(layer) end

---Added in **1.4**
---
---Returns true if the given event just occurred. See [[Event Listener]] for event IDs.
---
---**NOTE:** This function should not be used any longer, and will be deprecated soon. Instead, use the on_event function.
---@param event_id number
---@return boolean
function game:poll_event(event_id) end

---Added in **1.5**
---
---Get the cursor position on the screen. (Screen-based coordinates, based on the users screen resolution) end
---@return number x, number y
function game:get_screen_cursor() end

---Added in **1.5**
---
---Restart the level.
function game:restart() end

---Added in **1.5**
---
---Submits the player last saved score.
---
---**NOTE**: If the score is submitted before the level has been finished (by game over of level completed), the current score will not be saved yet.
function game:submit_score() end

---Added in **1.5**
---
---Sets the value of the given Principia variable.
---
---**NOTE**: Variables from Lua can contain values outside the normal 0.0-1.0 scope.
---@param varname string
---@param value number
function game:set_variable(varname, value) end

---Added in **1.5**
---
---Gets the value of a variable.
---
---**NOTE**: Variables from Lua can contain values outside the normal 0.0-1.0 scope.
---@param varname string
---@return number value
function game:get_variable(varname) end

---Added in **1.5**
---
---Returns the average FPS.
---@return number fps
function game:get_fps() end

---Added in **1.5.1**
---
---Opens a [[Prompt]] with the given parameters.
---
---Returns the ID of the prompt dialog that was created, which can be used for verification purposes. Returns nil if no prompt was created.To get the response, implement the following function:
---
---```lua
---function on_response(response, prompt_id) end
---    game:message('The response I got from prompt ' .. prompt_id .. ' was ' .. response) end
---end
---```
---
---The response function will only be called once, store the value if you wish.
---
---Valid responses:
---- `1` = First button.
---- `2` = Second button.
---- `3` = Third button.
---@param title string
---@param message string
---@param button1 string
---@param button2 string
---@param button3 string
---@return number prompt_id
function game:prompt(title, message, button1, button2, button3) end