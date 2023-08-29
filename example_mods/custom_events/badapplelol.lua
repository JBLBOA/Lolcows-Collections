function onEvent(name, value1, value2)
	if name == 'badapplelol' and value1 == 'a' then
		makeLuaSprite('whitebg', '', -500, -300)
		makeGraphic('whitebg',5000,5000,'4B0000')
		addLuaSprite('whitebg', false)
		setProperty('boyfriend.color', '5FCAFF')
		setProperty('dad.color', 'FF7000')
		setProperty('gf.color', 'FF3B3B')
	end
	if name == 'badapplelol' and value1 == 'b' then
		removeLuaSprite('whitebg')
		setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
		setProperty('dad.color', getColorFromHex('FFFFFF'))
		setProperty('gf.color', getColorFromHex('FFFFFF'))
	end
end