function goodNoteHit(id, direction, noteType, isSustainNote)
		createShadow()
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