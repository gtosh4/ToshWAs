function()
  if aura_env.state then
      local color = aura_env.state.classColor
      if color then
          aura_env.region:Color(color.r, color.g, color.b, color.a)
      end
  end
end
