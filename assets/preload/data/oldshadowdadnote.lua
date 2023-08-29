function opponentNoteHit(id, direction, noteType, isSustainNote)
		createShadow()
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