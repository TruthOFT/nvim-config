require("venv-selector").setup({
	settings = {
		options = {
			notify_user_on_venv_activation = true,
		},
		search = {
			anaconda_base = {
				command = "fd python$ /root/anaconda3/envs --full-path --color never -E /proc",
				type = "anaconda",
			},
		},
	},
})
