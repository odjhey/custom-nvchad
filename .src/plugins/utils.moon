M =
  setup_if_exist: (m, c) ->
    present, instance = pcall require, m
    if present
      if c
        instance.setup c
      else
        instance.setup!
M
