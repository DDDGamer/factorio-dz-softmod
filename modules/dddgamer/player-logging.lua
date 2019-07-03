-- Player Logging Soft Module
-- Logs who joined/left the server (Depricated, v0.15 logs that now)
-- Logs Player count when playes join/leave server
-- @usage require('modules/dddgamer/player-logging')
-- ------------------------------------------------------- --
-- @author Denis Zholob (DDDGamer)
-- github: https://github.com/deniszholob/factorio-softmod-pack
-- ======================================================= --

-- Constants --
-- ======================================================= --

Player_Logging = {}

-- On player join log player name
-- @param event on_player_joined_game
function Player_Logging.on_player_join(event)
    local player = game.players[event.player_index]
    -- local time_str = os.date("%I:M:%S %p", os.time())
    -- log("[Info] <Player Joined> name="..player.name)
    log('[Info Array] <Players Online> count=' .. #game.connected_players)
end

-- On player left log player name
-- @param event on_player_joined_game
function Player_Logging.on_player_leave(event)
    local player = game.players[event.player_index]
    -- local time_str = os.date("%Y-%m-%d %I:M:%S %p", os.time())
    -- log("[Info] <Player Left> name="..player.name)
    log('[Info Array] <Players Online> count=' .. #game.connected_players)
end

Event.register(defines.events.on_player_joined_game, Player_Logging.on_player_join)
Event.register(defines.events.on_player_left_game, Player_Logging.on_player_leave)
