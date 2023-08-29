local shName = "mononoise/barrel"

function onCreate()
	-- background shit

	setProperty('camZooming', true)

	makeLuaSprite('classroom', 'school/classroom', -248, 63);
	setScrollFactor('clasroom', 1, 1);
	scaleObject('classroom', 0.72, 0.72); 

	if not lowQuality then

		makeLuaSprite('fog3');
		makeGraphic('fog3', 2000, 2000, '000000')
		setScrollFactor('fog3', 1, 1);
		setObjectCamera('fog3', 'camHUD')
		screenCenter('fog3')
		setProperty('fog3.alpha', 1)
		addLuaSprite('fog3', true);

		makeLuaSprite('fog', 'school/fog_class',-248, 0);
		setScrollFactor('fog', 1, 1);
		scaleObject('fog', 1, 1);
		setObjectCamera('fog', 'camHUD')
		screenCenter('fog')
		addLuaSprite('fog', true);

		makeLuaSprite('stair_class', 'school/stair_class', -100, 70);
		setScrollFactor('stair_class', 1.2, 1);
		scaleObject('stair_class', 0.67, 0.67);

	end
		
	addLuaSprite('classroom', false);
	addLuaSprite('stair_class', true);

	--esto en verdad no hace nada btw close(true); 

	luaDebugMode = true

	setProperty('defaultCamZoom', 1.2)
	setProperty('stair_class.alpha', 0)

	doTweenAlpha('fog3Al', 'fog3', 0.6, 2, 'linear')
end
