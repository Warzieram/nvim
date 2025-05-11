return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
  config = function ()
    require("copilot").setup({
      suggestion = {
        keymap = {
          accept_word = false,
          accept_line = false
        }
      }
    })
  end
}
