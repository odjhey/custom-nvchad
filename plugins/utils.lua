local M = {
  setup_if_exist = function(m, c)
    local present, instance = pcall(require, m)
    if present then
      if c then
        return instance.setup(c)
      else
        return instance.setup()
      end
    end
  end
}
return M
