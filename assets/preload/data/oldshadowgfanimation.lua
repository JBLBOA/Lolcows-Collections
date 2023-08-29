function onUpdate()
            if getProperty('gf.animation.curAnim.name') == 'singLEFT' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'singRIGHT' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'singUP' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'singDOWN' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'idle-alt' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'idle' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'danceLeft' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'danceRight' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'sad' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'hairBlow' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'hairFall' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'scared' then
		createShadow('gf')
            end
            if getProperty('gf.animation.curAnim.name') == 'cheer' then
		createShadow('gf')
            end
        end

local shadows = 0
local alpha = 0.1
function createShadow()
	image = getProperty('gf.imageFile')
	frame = getProperty('gf.animation.frameName')
	x = getProperty('gf.x')
	y = getProperty('gf.y')
	scaleX = getProperty('gf.scale.x')
	scaleY = getProperty('gf.scale.y')
	offsetX = getProperty('gf.offset.x')
	offsetY = getProperty('gf.offset.y')
	
	shadows = shadows + 1
	makeAnimatedLuaSprite('gf'..shadows, image, x, y)
	setProperty('gf'..shadows..'.offset.x', offsetX)
	setProperty('gf'..shadows..'.offset.y', offsetY)
	setProperty('gf'..shadows..'.scale.x', scaleX)
	setProperty('gf'..shadows..'.scale.y', scaleY)
	setProperty('gf'..shadows..'.alpha', alpha)
	--setProperty('gf'..shadows..'.color', color)
	setBlendMode('gf'..shadows, 'add')
	addAnimationByPrefix('gf'..shadows, 'stuff', frame, 0, false)
	addLuaSprite('gf'..shadows, false)
	setObjectOrder('gf'..shadows, getObjectOrder('gfGroup') - 1)
	doTweenY('gf'..shadows..'y', 'gf'..shadows, getProperty('gf'..shadows..'.y') - 300, 0.85, 'quadIn')
	doTweenAlpha('gf'..shadows, 'gf'..shadows, 0, 0.8, 'quadOut')
end