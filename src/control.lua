script.on_event([defines.events.on_player_created, defines.on_player_joined_game, defines.on_force_created], function(event)
  game.forces["player"].manual_mining_speed_modifier=2
  game.forces["player"].worker_robots_speed_modifier=1.5
end)
