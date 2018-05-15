script.on_init(function ()
  applyMod()
end)

script.on_configuration_changed(function ()
  applyMod()
end)

script.on_event(defines.events.on_runtime_mod_setting_changed, function ()
  applyMod()
end)

script.on_event(defines.events.on_player_created, function ()
  local player = game.players[event.player_index]
  player.insert{name="assembling-machine-3", count=1}
	player.insert{name="small-electric-pole", count=1}
	player.insert{name="solar-panel", count=1}

  game.permissions.get_group("Default").set_allows_action(defines.input_action.craft, false)

  applyMod()
end)

function applyMod()
  for _, player in pairs(game.players) do
    player.character_build_distance_bonus=100
    player.character_reach_distance_bonus=100
    player.force.manual_mining_speed_modifier=5
    player.force.worker_robots_speed_modifier=5
  end
end
