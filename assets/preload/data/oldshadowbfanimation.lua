function onUpdate()
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'danceLeft' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'danceRight' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFTmiss' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWNmiss' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUPmiss' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHTmiss' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'hey' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'hurt' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'scared' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'dodge' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'attack' then
		createShadow('bf')
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'pre-attack' then
		createShadow('bf')
            end
        end

local shadows = 0
local alpha = 0.1
function createShadow()
	image = getProperty('boyfriend.imageFile')
	frame = getProperty('boyfriend.animation.frameName')
	x = getProperty('boyfriend.x')
	y = getProperty('boyfriend.y')
	scaleX = getProperty('boyfriend.scale.x')
	scaleY = getProperty('boyfriend.scale.y')
	offsetX = getProperty('boyfriend.offset.x')
	offsetY = getProperty('boyfriend.offset.y')
	
	shadows = shadows + 1
	makeAnimatedLuaSprite('boyfriend'..shadows, image, x, y)
	setProperty('boyfriend'..shadows..'.offset.x', offsetX)
	setProperty('boyfriend'..shadows..'.offset.y', offsetY)
	setProperty('boyfriend'..shadows..'.scale.x', scaleX)
	setProperty('boyfriend'..shadows..'.scale.y', scaleY)
	setProperty('boyfriend'..shadows..'.alpha', alpha)
	--setProperty('boyfriend'..shadows..'.color', color)
	setBlendMode('boyfriend'..shadows, 'add')
	addAnimationByPrefix('boyfriend'..shadows, 'stuff', frame, 0, false)
	addLuaSprite('boyfriend'..shadows, false)
	setObjectOrder('boyfriend'..shadows, getObjectOrder('boyfriendGroup') - 1)
	doTweenY('boyfriend'..shadows..'y', 'boyfriend'..shadows, getProperty('boyfriend'..shadows..'.y') - 300, 0.85, 'quadIn')
	doTweenAlpha('boyfriend'..shadows, 'boyfriend'..shadows, 0, 0.8, 'quadOut')
end