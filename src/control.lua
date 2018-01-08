script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index]

  player.force.manual_mining_speed_modifier=2
  player.force.worker_robots_speed_modifier=2

  player.character_build_distance_bonus=60
  player.character_reach_distance_bonus=60

	player.insert{name="assembling-machine-3", count=1}
  player.insert{name="small-electric-pole", count=2}
  player.insert{name="solar-panel", count=1}

  game.permissions.get_group("Default").set_allows_action(defines.input_action.craft, false)
end)
