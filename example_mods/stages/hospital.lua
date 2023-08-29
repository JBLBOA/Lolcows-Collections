function onCreate()
	-- background shit
	makeLuaSprite('hospital front', 'hospital front', -600, -500);
	setScrollFactor('hospital front', 0.9, 0.9);
	scaleObject('hospital front', 3.0, 3.0);
	
	makeLuaSprite('light', 'BGs/1/light', -600, -500);
	setScrollFactor('light', 0.5, 0.5);
	scaleObject('light', 0.75, 0.75);

	makeLuaSprite('crapufriends', 'crapufriends', -600, -500);
	setScrollFactor('crapufriends', 0.65, 0.35);
	scaleObject('crapufriends', 3.0, 3.0);

	addLuaSprite('hospital front', false);
	addLuaSprite('light', true);
	addLuaSprite('crapufriends', true);
end
function onCreatePost()
	setScrollFactor('gf', 0.89, 1);
end