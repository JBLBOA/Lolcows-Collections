
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('bg de matix', 'bg de matix', -450, -200);
	setScrollFactor('bg de matix', 1, 1);
	scaleObject('bg de matix', 1.8, 1.8);

	makeAnimatedLuaSprite('StageAnimated','el_bg_de_matix', -560,100);
      luaSpriteAddAnimationByPrefix('StageAnimated', 'dance', 'Símbolo 5000', 24, true)
      objectPlayAnimation('StageAnimated','dance', false)
      setScrollFactor('StageAnimated', 1.1, 1.1);
	scaleObject('StageAnimated', 1.8, 1.8)

	makeAnimatedLuaSprite('epilepsia','epilepsia', -1015, -238)
	addAnimationByPrefix('epilepsia', 'dance', 'Símbolo 6000', 16, true)
	setScrollFactor('epilepsia', 1.1, 1.1);
	scaleObject('epilepsia', 1.6, 1.6)

	addLuaSprite('bg de matix', false);
	addLuaSprite('StageAnimated', false);
	addLuaSprite('epilepsia', true);
end