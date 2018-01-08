script.on_event({defines.events.on_player_created, defines.on_player_joined_game, defines.on_force_created}, function(event)
  game.forces["player"].manual_mining_speed_modifier=2
  game.forces["player"].worker_robots_speed_modifier=2
  game.permissions.get_group("Default").set_allows_action(defines.input_action.craft, false)
end)

script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index]
	player.insert{name="assembling-machine-3", count=1}
  player.insert{name="small-electric-pole", count=2}
  player.insert{name="solar-panel", count=1}
end)
