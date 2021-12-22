function onCreate()
	-- background shit
	makeLuaSprite('corupted-house', 'corupted-house', -500, -200);
	setScrollFactor('corupted-house', 0.9, 0.9);
	
	makeLuaSprite('corupted-floor', 'corupted-floor', -600, -300);
	setScrollFactor('corupted-floor', 0.9, 0.9);
	scaleObject('corupted-floor', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight-left', 'stage-light', -125, -100);
		setScrollFactor('stagelight-left', 0.9, 0.9);
		scaleObject('stagelight-left', 1.1, 1.1);
		
		makeLuaSprite('stagelight-right', 'stage-light', 1225, -100);
		setScrollFactor('stagelight-right', 0.9, 0.9);
		scaleObject('stagelight-right', 1.1, 1.1);
		setProperty('stagelight-right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end

	addLuaSprite('corupted-house', false);
	addLuaSprite('corupted-floor', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end