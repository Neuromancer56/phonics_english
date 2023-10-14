language = "phonics_english"
write_command ="write"
phonics = {
	a={name="a", length=.4, gain=1, also_silent=1},
	_a={name="_a", length=.5, gain=1, also_silent=0},
	ar={name="ar", length=.93, gain=1, also_silent=0},
	au={name="au", length=.52, gain=1, also_silent=0},
	b={name="b", length=.35, gain=1, also_silent=1},
	c={name="c", length=.3, gain=1, also_silent=1},
	ch={name="ch", length=.17, gain=1, also_silent=0},
	d={name="d", length=.77, gain=1, also_silent=1},
	e={name="e", length=.65, gain=1, also_silent=1},
	_e={name="_e", length=.64, gain=1, also_silent=0},
	er={name="er", length=.65, gain=1, also_silent=0},
	f={name="f", length=.7, gain=1, also_silent=1},
	g={name="g", length=.14, gain=1, also_silent=1},
	h={name="h", length=.48, gain=1, also_silent=1},
	i={name="i", length=.65, gain=1, also_silent=1},
	_i={name="_i", length=.45, gain=1, also_silent=0},
	ing={name="ing", length=.67, gain=1, also_silent=0},
	j={name="j", length=.20, gain=1, also_silent=1},
	k={name="k", length=.3, gain=1, also_silent=1},
	l={name="l", length=.65, gain=1, also_silent=1},
	m={name="m", length=.65, gain=1, also_silent=1},
	n={name="n", length=.65, gain=1, also_silent=1},
	o={name="o", length=.65, gain=1, also_silent=1},
	_o={name="_o", length=.65, gain=1, also_silent=0},
	_oo={name="_oo", length=.65, gain=1, also_silent=0},
	oo={name="oo", length=.65, gain=1, also_silent=0},
	ou={name="ou", length=.6, gain=1, also_silent=0},
	p={name="p", length=.35, gain=1, also_silent=1},
	q={name="q", length=.15, gain=1, also_silent=1},
	r={name="r", length=.65, gain=1, also_silent=1},
	s={name="s", length=.65, gain=1, also_silent=1},
	sh={name="sh", length=.65, gain=1, also_silent=0},
	t={name="t", length=.3, gain=1, also_silent=1},
	th={name="th", length=.18, gain=1, also_silent=0},
	u={name="u", length=.65, gain=1, also_silent=1},	
	_u={name="_u", length=.92, gain=1, also_silent=0},	
	v={name="v", length=.65, gain=1, also_silent=1},
	w={name="w", length=.45, gain=1, also_silent=1},
	--wh={name="wh", length=.23, gain=1, also_silent=0},
	x={name="x", length=.6, gain=1, also_silent=1},
	y={name="y", length=.84, gain=1, also_silent=1},		
	z={name="z", length=.65, gain=1, also_silent=1}
}

two_char_phonics = {
	ar= {name="ar"},
	au= {name="au"},
	ch= {name="ch"},
	er= {name="er"},
	oo= {name="oo"},
	ou= {name="ou"},
	sh= {name="sh"},
	th= {name="th"},
	--wh= {name="wh"}	
}

three_char_phonics = {
	ing= {name="ing"}
}


phonics_scarcity = tonumber(minetest.settings:get("phonics_scarcity")) or 350
register_nodes(phonics, language, write_command)
register_ores(phonics, language,phonics_scarcity)

local dpath = minetest.get_modpath("phonics_english") .. "/"
dofile(dpath .. "crafting.lua")
print("Phonics English Mod Loaded!")
 	--minetest.env:punch_node(pos) 
 	--minetest.env:dig_node(pos) 
 	--http://minetest.net/forum/viewtopic.php?id=2602
 	--https://c9.io/lkjoel/minetest-modder/workspace/parseme.txt
