
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit

	makeLuaSprite('fog3');
	makeGraphic('fog3', 2000, 2000, '000000')
	setScrollFactor('fog3', 1, 1);
	setObjectCamera('fog3', 'camHUD')
	screenCenter('fog3')
	setProperty('fog3.alpha', 1)
	addLuaSprite('fog3', true);

	makeLuaSprite('skisochef', 'skisochef', -600, -300);
	setScrollFactor('skisochef', 0.9, 0.9);
	scaleObject('skisochef', 1.1, 1.1);
	
	makeLuaSprite('skisochefhumo', 'skisochefhumo', -600, -300);
	setScrollFactor('skisochefhumo', 0.9, 0.9);
	scaleObject('skisochefhumo', 1.1, 1.1);

	addLuaSprite('skisochef', false);
	addLuaSprite('skisochefhumo', true);

	luaDebugMode = true

	setProperty('defaultCamZoom', 0.7)
	setProperty('stair_class.alpha', 0)

	doTweenAlpha('fog3Al', 'fog3', 0.6, 2, 'linear')
end