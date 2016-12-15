data:extend(
  {
    {
      type = "assembling-machine",
      name = "nuclear-reactor",
      icon = "__Nucular__/graphics/icons/nuclear-reactor.png",
      flags = {"placeable-neutral","placeable-player", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "nuclear-reactor"},
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      module_specification =
      {
        module_slots = 0
      },
      allowed_effects = {"productivity"},
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      animation =
      {
      north={ 
          filename = "__Nucular__/graphics/entity/nuclear-reactor-south.png",
          frame_count = 1,
          width = 160,
          height = 160,
          shift = {1, 0}
        },east={
          filename = "__Nucular__/graphics/entity/nuclear-reactor-west.png",
          frame_count = 1,
          width = 160,
          height = 160,
          shift = {1, 0}
        },west={
          filename = "__Nucular__/graphics/entity/nuclear-reactor-east.png",
          frame_count = 1,
          width = 160,
          height = 160,
          shift = {1, 0}
        },south={
          filename = "__Nucular__/graphics/entity/nuclear-reactor-north.png",
          frame_count = 1,
          width = 160,
          height = 160,
          shift = {1, 0}
        }
      },
      working_sound =
      {
        sound =
        {
          {
            filename = "__base__/sound/chemical-plant.ogg",
            volume = 0.0
          }
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
      },
      crafting_speed = 1,
      ingredient_count = 4,

      energy_source =
      {
        buffer_capacity = "10MJ",
        type = "electric",
        usage_priority = "primary-input",
        emissions = 0
      },
      energy_usage = "100kW",

      crafting_categories = {"nuclear"},
      fluid_boxes =
      {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{ type="input", position = {-1, -2} }}
        },
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{ type="input", position = {1, -2} }}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {-1, 2} }}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{ position = {1, 2} }}
        },
      off_when_no_fluid_recipe = true
      }
    }
  })
