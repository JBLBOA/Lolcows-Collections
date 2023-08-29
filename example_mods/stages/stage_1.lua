function onCreate()
	-- background shit
	makeLuaSprite('back', 'BGs/1/back', -600, -500);
	setScrollFactor('back', 0.9, 0.9);
	scaleObject('back', 0.75, 0.75);
	
	makeLuaSprite('light', 'BGs/1/light', -600, -500);
	setScrollFactor('light', 0.5, 0.5);
	scaleObject('light', 0.75, 0.75);

	makeLuaSprite('front', 'BGs/1/front', -670, -500);
	setScrollFactor('front', 0.65, 0.35);
	scaleObject('front', 0.75, 0.75);

	addLuaSprite('back', false);
	addLuaSprite('light', true);
	addLuaSprite('front', true);
end
function onCreatePost()
	setScrollFactor('gf', 0.89, 1);
end