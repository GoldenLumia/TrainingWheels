--- STEAMODDED HEADER
--- MOD_NAME: Training Wheels
--- MOD_ID: TrainingWheels
--- MOD_AUTHOR: [GoldenLumia]
--- MOD_DESCRIPTION: The first two rerolls of each shop are free.

----------------------------------------------
------------MOD CODE -------------------------

local new_roundref = new_round
function new_round()
    new_roundref()
    G.E_MANAGER:add_event(Event({
        func = function() 
            G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + 2
            calculate_reroll_cost(true); return true
        end}))
end

----------------------------------------------
------------MOD CODE END----------------------