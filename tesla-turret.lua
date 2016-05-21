data:extend(
{
  {
    type = "beam",
    name = "tesla-lightning",
    flags = {"not-on-map"},
    width = 0.5,
    damage_interval = 15,
    light = {intensity = 0.9, size = 30},
    working_sound =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 45, type = "electric"}
          }
        }
      }
    },
    head =
    {
      filename = "__base__/graphics/entity/beam/beam-head.png",
      line_length = 16,
      tint = {r=0.0, g=0.98, b=1.0},
      frame_count = 16,
      width = 45,
      height = 39,
      priority = "high",
      animation_speed = 0.1,
      blend_mode = "additive-soft"
    },
    tail =
    {
      filename = "__base__/graphics/entity/beam/beam-tail.png",
      line_length = 16,
      tint = {r=0.0, g=0.98, b=1.0},
      frame_count = 16,
      width = 45,
      height = 39,
      priority = "high",
      animation_speed = 0.1,
      blend_mode = "additive-soft"
    },
    body =
    {
      {
        filename = "__base__/graphics/entity/beam/beam-body-1.png",
        line_length = 16,
        width = 45,
        height = 39,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
      {
        filename = "__base__/graphics/entity/beam/beam-body-2.png",
        line_length = 16,
        width = 45,
        height = 39,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
      {
        filename = "__base__/graphics/entity/beam/beam-body-3.png",
        line_length = 16,
        width = 45,
        height = 39,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
      {
        filename = "__base__/graphics/entity/beam/beam-body-4.png",
        line_length = 16,
        width = 45,
        height = 39,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
      {
        filename = "__base__/graphics/entity/beam/beam-body-5.png",
        line_length = 16,
        width = 45,
        height = 39,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
      {
        filename = "__base__/graphics/entity/beam/beam-body-6.png",
        line_length = 16,
        width = 45,
        height = 39,
        frame_count = 16,
        blend_mode = beam_blend_mode,
      },
    }
  },
  {
    type = "electric-turret",
    name = "tesla-turret",
    icon = "__base__/graphics/icons/laser-turret.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation"},
    minable = { mining_time = 0.5, result = "tesla-turret" },
    max_health = 2500,
    corpse = "tesla-turret-remnants",
    collision_box = {{-1.35, 0}, {1.35, 2.35}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    dying_explosion = "medium-explosion",
    folded_speed = 0.1,
    preparing_speed = 0.1,
    prepared_speed = 0.1,
    starting_attack_speed = 0.1,
    attacking_speed = 0.1,
    ending_attack_speed = 0.1,
    folding_speed = 0.1,

  energy_source =
  {
    type = "electric",
    buffer_capacity = "2403kJ",
    input_flow_limit = "9600kW",
    drain = "196kW",
    usage_priority = "primary-input"
  },
  folded_animation =
  {
    layers =
    {
      -- {
      --   filename = "__Tesla_Turret__/graphics/entity/tesla-turret/tesla-turret-base.png",
      --   priority = "high",
      --   width = 250,
      --   height = 200,
      --   frame_count = 10,
      --   line_length = 7,
      --   axially_symmetrical = false,
      --   direction_count = 1,
      --   shift = { 0.109375, 0.03125 }
      -- }
      {
        filename = "__Tesla_Turret__/graphics/entity/tesla-turret/tesla-turret-animation.png",
        priority = "medium",
        width = 244,
        height = 204,
        frame_count = 10,
        line_length = 7,
        run_mode = "forward",
        axially_symmetrical = false,
        direction_count = 1,
        shift = { 0, 0 }
      }
      -- laser_turret_extension_shadow{frame_count=1, line_length=1},
      -- laser_turret_extension_mask{frame_count=1, line_length=1}
    }
  },
  preparing_animation =
  {
    layers =
    {
      {
        filename = "__Tesla_Turret__/graphics/entity/tesla-turret/tesla-turret-animation.png",
        priority = "medium",
        width = 244,
        height = 204,
        frame_count = 10,
        line_length = 7,
        run_mode = "forward",
        axially_symmetrical = false,
        direction_count = 1,
        shift = { 0, 0 }
      }
      -- laser_turret_extension_shadow{},
      -- laser_turret_extension_mask{}
    }
  },
  prepared_animation =
  {
    layers =
    {
      {
        filename = "__Tesla_Turret__/graphics/entity/tesla-turret/tesla-turret-animation.png",
        line_length = 7,
        width = 244,
        height = 204,
        frame_count = 10,
        axially_symmetrical = false,
        direction_count = 1,
        shift = {0, 0}
      }
      -- {
      --   filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-mask.png",
      --   line_length = 8,
      --   width = 54,
      --   height = 44,
      --   frame_count = 1,
      --   axially_symmetrical = false,
      --   apply_runtime_tint = true,
      --   direction_count = 64,
      --   shift = {0.0625, -1.3125},
      -- },
      -- {
      --   filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-shadow.png",
      --   line_length = 8,
      --   width = 88,
      --   height = 52,
      --   frame_count = 1,
      --   axially_symmetrical = false,
      --   direction_count = 64,
      --   draw_as_shadow = true,
      --   shift = {1.59375, 0}
      -- }
    }
  },
  folding_animation =
  {
    layers =
    {
      {
        filename = "__Tesla_Turret__/graphics/entity/tesla-turret/tesla-turret-animation.png",
        priority = "medium",
        width = 244,
        height = 204,
        frame_count = 10,
        line_length = 7,
        run_mode = "backward",
        axially_symmetrical = false,
        direction_count = 1,
        shift = { 0, 0 }
      }
      -- laser_turret_extension_shadow{run_mode = "backward"},
      -- laser_turret_extension_mask{run_mode = "backward"}
    }
  },
  base_picture =
  {
    layers =
    {
      {
        filename = "__Tesla_Turret__/graphics/entity/tesla-turret/tesla-turret-base.png",
        priority = "high",
        width = 240,
        height = 200,
        frame_count = 1,
        line_length = 7,
        axially_symmetrical = false,
        direction_count = 1,
        shift = { 0, 0 }
      },
      -- {
      --   filename = "Laser_Beam_Turret/graphics/entity/laser-turret/laser-turret-base-mask.png",
      --   line_length = 1,
      --   width = 54,
      --   height = 46,
      --   frame_count = 1,
      --   axially_symmetrical = false,
      --   apply_runtime_tint = true,
      --   direction_count = 1,
      --   shift = {0.046875, -0.109375},
      -- },
    }
  },
  vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
  attack_parameters =
  {
    type = "beam",
    ammo_category = "electric",
    cooldown = 15,
    --projectile_center = {0, -0.2},
    --projectile_creation_distance = 1.4,
    range = 12,
    sound =
    {
      {
        filename = "__base__/sound/fight/laser-1.ogg",
        volume = 0.5
      },
      {
        filename = "__base__/sound/fight/laser-2.ogg",
        volume = 0.5
      },
      {
        filename = "__base__/sound/fight/laser-3.ogg",
        volume = 0.5
      }
    },
    ammo_type =
    {
      category = "laser-turret",
      energy_consumption = "800kJ",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "beam",
          beam = "tesla-lightning",
          max_length = 28,
          duration = 15,
          source_offset = {0, -1.5},
        }
      }
    }
  },
  --sound = make_laser_sounds()
}
})

data:extend(
{
  {
    type = "item",
    name = "tesla-turret",
    icon = "__base__/graphics/icons/laser-turret.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "b[turret]-b[tesla-turret]",
    place_result = "tesla-turret",
    stack_size = 50
  }
})

data:extend(
{
  {
    type = "recipe",
    name = "tesla-turret",
    enabled = true,
    energy_required = 20,
    ingredients =
    {
      {"steel-plate", 50},
      {"electronic-circuit", 35},
      {"battery", 60}
    },
    result = "tesla-turret"
  }
})

data:extend(
{
  {
    type = "corpse",
    name = "tesla-turret-remnants",
    icon = "__base__/graphics/icons/remnants.png",
    flags = {"placeable-neutral", "not-on-map"},
    collision_box = {{-1.35, 0}, {1.35, 2.35}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    tile_width = 1,
    tile_height = 2,
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 15, -- 15 minutes
    final_render_layer = "remnants",
    subgroup = "remnants",
    order="d[remnants]-a[custom]-c[tesla-turret]",
    animation =
    {
      {
        width = 240,
        height = 200,
        frame_count = 1,
        direction_count = 1,
        filename = "__Tesla_Turret__/graphics/entity/tesla-turret/tesla-turret-base.png"
      }
    }
  }
})

data:extend(
{
  {
    type = "technology",
    name = "tesla-turrets",
    icon = "__base__/graphics/technology/laser-turrets.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tesla-turret"
      }
    },
    prerequisites = {"turrets", "laser", "battery"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1}
      },
      time = 45
    },
    order = "a-j-b"
  }
})
