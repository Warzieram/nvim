return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
  config = function ()
    require("copilot").setup({
      suggestion = {
        autotrigger = true,
        keymap = {
          accept_word = "C-y",
          accept_line = false,
          accept = "C-l",
        }
      }
    })
  end
}
