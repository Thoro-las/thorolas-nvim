return {
	"phaazon/hop.nvim",
	config = function()
		require('hop').setup({ keys = 'etovxqpdygfblzhckisuran', term_seq_bias = 0.5 }); 

        local kw = require("thorolas.utility.keymaps")
		kw.map('n', 'F', 'f', { desc = 'Old Find' });
		kw.map('n', 't', ':HopPattern<CR>', { noremap = true, desc = 'Hop To Pattern' });
		kw.map({ 'n', 's', 'x', 'v' }, 'f', ':HopChar1<CR>', { desc = 'Hop To Character' });
	end
};
