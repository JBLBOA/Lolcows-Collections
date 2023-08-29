function onUpdatePost(elapsed)
	setProperty('gf.visible', false)
end

local shName = "mononoise/barrel"

function onCreate()
        -- background shit
        makeLuaSprite('bg', 'bg', -400, 50);
        scaleObject('bg', 0.8, 0.8);
        addLuaSprite('bg', false);

    luaDebugMode = true

    runHaxeCode([[
        filters = [];

        setVar('filters', filters)
    ]])

    addShader('sketched', 0)
    --addShader('mononoise/blur', 1)
end


function onUpdate(elapsed)
    --debugPrint(shName[2])
    --debugPrint(toString(test))

    setShaderFloat("tempShader0", "iTime", os.clock())
end

mirabienhijodetuputamadre = { --masturbin
}

function onStepHit()
    if mirabienhijodetuputamadre[curStep] then 
        mirabienhijodetuputamadre[curStep]()
    end
end












































function string:split(s) return stringSplit(self, s) end

function addShader(shaderName, order)
    shaderCoordFix() -- initialize a fix for textureCoord when resizing game window
    makeLuaSprite('tempShader' .. order)
    local object = 'tempShader' .. order
    runHaxeCode([[
        var shaderName = "]] .. shaderName .. [[";
        
        game.initLuaShader(shaderName);
        
        var shader]] .. order .. [[ = game.createRuntimeShader(shaderName);

        getVar('filters').push(new ShaderFilter(shader]] .. order .. [[));

        game.camHUD.setFilters(filters);
        game.camGame.setFilters(filters);
        game.getLuaObject("]].. object ..[[").shader = shader]] .. order .. [[; // setting it into temporary sprite so luas can set its shader uniforms/properties
        return;
    ]])

    shName = shaderName:split '/'
    shName.index = 2
end

function shaderCoordFix()
    runHaxeCode([[
        resetCamCache = function(?spr) {
            if (spr == null || spr.filters == null) return;
            spr.__cacheBitmap = null;
            spr.__cacheBitmapData = null;
        }
        
        fixShaderCoordFix = function(?_) {
            resetCamCache(game.camGame.flashSprite);
            resetCamCache(game.camHUD.flashSprite);
            resetCamCache(game.camOther.flashSprite);
        }
    
        FlxG.signals.gameResized.add(fixShaderCoordFix);
        fixShaderCoordFix();
        return;
    ]])
    
    local temp = onDestroy
    function onDestroy()
        runHaxeCode([[
            FlxG.signals.gameResized.remove(fixShaderCoordFix);
            return;
        ]])
        if (temp) then temp() end
    end
end









































































































--joto el que lo lea jeje
