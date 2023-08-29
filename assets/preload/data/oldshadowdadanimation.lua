function onUpdate()
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'danceLeft' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'danceRight' then
		createShadow()
            end
            if getProperty('dad.animation.curAnim.name') == 'hey' then
		createShadow()
            end
        end

local shadows = 0
local alpha = 0.1
function createShadow()
	image = getProperty('dad.imageFile')
	frame = getProperty('dad.animation.frameName')
	x = getProperty('dad.x')
	y = getProperty('dad.y')
	scaleX = getProperty('dad.scale.x')
	scaleY = getProperty('dad.scale.y')
	offsetX = getProperty('dad.offset.x')
	offsetY = getProperty('dad.offset.y')
	
	shadows = shadows + 1
	makeAnimatedLuaSprite('dad'..shadows, image, x, y)
	setProperty('dad'..shadows..'.offset.x', offsetX)
	setProperty('dad'..shadows..'.offset.y', offsetY)
	setProperty('dad'..shadows..'.scale.x', scaleX)
	setProperty('dad'..shadows..'.scale.y', scaleY)
	setProperty('dad'..shadows..'.alpha', alpha)
	--setProperty('dad'..shadows..'.color', color)
	setBlendMode('dad'..shadows, 'add')
	addAnimationByPrefix('dad'..shadows, 'stuff', frame, 0, false)
	addLuaSprite('dad'..shadows, false)
	setObjectOrder('dad'..shadows, getObjectOrder('dadGroup') - 1)
	doTweenY('dad'..shadows..'y', 'dad'..shadows, getProperty('dad'..shadows..'.y') - 300, 0.85, 'quadIn')
	doTweenAlpha('dad'..shadows, 'dad'..shadows, 0, 0.8, 'quadOut')
end