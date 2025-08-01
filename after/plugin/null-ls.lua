local null_ls = require("null-ls")
local cspell = require("cspell")

local cspell_config = {
	on_success = function(cspell_config_file, params)
		os.execute(
			string.format(
				"cat %s | jq -S '.words |= sort' | tee %s > /dev/null",
				cspell_config_file,
				cspell_config_file
			)
		)
	end,
}

null_ls.setup({
	debug = true,
	sources = {
		null_ls.builtins.formatting.stylua,
		require("none-ls.diagnostics.flake8"),
		null_ls.builtins.code_actions.impl,
		-- null_ls.builtins.diagnostics.pylint,
		cspell.diagonstics,
		-- cspell.code_action, -- .with(cspell_config),
	},
})
