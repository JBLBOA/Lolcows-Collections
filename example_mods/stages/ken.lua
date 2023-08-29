
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('ken5', 'ken5', -650, -300);
	setScrollFactor('ken5', 0.9, 0.9);
	scaleObject('ken5', 0.7, 0.7);

	makeLuaSprite('ken4', 'ken4', -650, -300);
	setScrollFactor('ken4', 1.0, 1.0);
	scaleObject('ken4', 0.7, 0.7);

	makeLuaSprite('ken4', 'ken4', -650, -300);
	setScrollFactor('ken4', 1.0, 1.0);
	scaleObject('ken4', 0.7, 0.7);

	makeLuaSprite('ken3', 'ken3', -650, -300);
	setScrollFactor('ken3', 1.0, 1.0);
	scaleObject('ken3', 0.7, 0.7);

	makeLuaSprite('ken2', 'ken2', -650, -300);
	setScrollFactor('ken2', 1.0, 1.0);
	scaleObject('ken2', 0.7, 0.7);

	makeLuaSprite('ken1', 'ken1', -650, -300);
	setScrollFactor('ken1', 1.0, 1.0);
	scaleObject('ken1', 0.7, 0.7);

	addLuaSprite('ken5', false);
	addLuaSprite('ken4', false);
	addLuaSprite('ken3', true);
	addLuaSprite('ken2', false);
	addLuaSprite('ken1', true);
end