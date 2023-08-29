
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('finalBg', 'finalBg', -650, -300);
	setScrollFactor('finalBg', 0.9, 0.9);
	scaleObject('finalBg', 1.1, 1.1);

	makeLuaSprite('finalFront', 'finalFront', -650, -300);
	setScrollFactor('finalFront', 1.0, 1.0);
	scaleObject('finalFront', 1.1, 1.1);

	makeLuaSprite('finalEf', 'finalEf', -650, -300);
	setScrollFactor('finalEf', 0.9, 0.9);
	scaleObject('finalEf', 1.1, 1.1);

	addLuaSprite('finalBg', false);
	addLuaSprite('finalFront', false);
	addLuaSprite('finalEf', true);
end