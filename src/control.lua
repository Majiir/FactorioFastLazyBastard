script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	player.force.manual_mining_speed_modifier=2
	player.force.worker_robots_speed_modifier=1.5
end)
