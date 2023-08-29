
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('oveja', 'oveja', -750, -400);
	setScrollFactor('oveja', 0.9, 0.9);
	scaleObject('oveja', 0.7, 0.7);

	makeLuaSprite('overlay', 'overlay', 750, 400);
	setScrollFactor('overlay', 0.9, 0.9);
	scaleObject('overlay', 0.5, 0.5);

	makeLuaSprite('overlay2', 'overlay2', -750, -400);
	setScrollFactor('overlay2', 0.9, 0.9);
	scaleObject('overlay2', 0.4, 0.4);

	addLuaSprite('oveja', false);
	addLuaSprite('overlay', true);
	addLuaSprite('overlay2', true);
end