return
{
	'xeluxee/competitest.nvim',
	dependencies = 'MunifTanjim/nui.nvim',
	lazy=true,
	event="VeryLazy",
	config = function() require('competitest').setup
	{
		complie_command=
		{
			cpp=
			{
				exec="g++",
				args=
				{
					"$(FNAME)",
					"-o",
					"$(FNOEXT)",
					"-g",
					"-std=c++14",
					"-Wall",
					"-Wextra",
					"-Wshadow",
					"-Wconversion",
					"-fsanitize=address,undefined"
				}
			},
		},
		maximum_time=2000,
		testcases_input_file_format="$(FNOEXT)$(TCNUM).in",
		testcases_output_file_format="$(FNOEXT)$(TCNUM).ans",
		-- template_file="~/oi/template.$(FEXT)",
		-- evaluate_template_modifiers=true,
		-- date_format="%Y.%m.%d %H:%M:%S",
		-- received_problems_path="~/oi/"
	}end,
}
