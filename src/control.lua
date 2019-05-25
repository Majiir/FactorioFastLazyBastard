
script.on_event(defines.events.on_player_created, function (event)
  local player = game.players[event.player_index]
  if player then
    player.insert{name="assembling-machine-3", count=1}
    player.insert{name="small-electric-pole", count=1}
    player.insert{name="offshore-pump", count=1}
    player.insert{name="boiler", count=1}
    player.insert{name="steam-engine", count=1}
  end

  game.permissions.get_group("Default").set_allows_action(defines.input_action.craft, false)
end)
