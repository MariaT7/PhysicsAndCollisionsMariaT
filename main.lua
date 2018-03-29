-----------------------------------------------------------------------------------------
-- -- Title: PhysicsAndCollisions
-- Name: Maria T
-- Course: ICS2O/3C
-- This program...
---------------------------------------------------------------------

--Hide status bar
display.setStatusBar(display.HiddenStatusBar)

--load physics
local physics = require("physics")

-- Start physics
physics.start()
-----------------------------------------------------------
--Objects
------------------------------------------------------------
--Ground
local ground = display.newImage("Images/ground.png", 0, 0)

	--Set the x and y pos
	ground.x = display.contentCenterX
	ground.y = display.contentHeight

	--Change the width to be the same as the screen 
	ground.width = display.contentWidth

	-- Add to physics
	physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

----------------------------------------------------------------------------------------------

--Create a verticle beam
local beam = display.newImage("Images/beam.png", 0, 0)

	--set the x and y pos
	beam.x = display.contentCenterX/5
	beam.y = display.contentCenterY*1.65

	--set the beam size
	beam.width = display.contentWidth/2
	beam.height = display.contentHeight/10

	-- rotate the beam 45 degrees so it is on its angle
	beam:rotate(45)

	-- send it to the back layer
	beam:toBack()

	--add to physics
	physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

	--create bkg
	local bkg = display.newImage("Images/bkg.png", 0, 0)

		--set the x and y pos
		bkg.x = display.contentCenterX
		bkg.y = display.contentCenterY

	 	--set the bkg size
	 	bkg.width = display.contentWeight
		bkg.height = display.contentHeight

		-- send to back
		bkg:toBack()


--Create a verticle beam
local beam1 = display.newImage("Images/beam_long.png", 0, 0)

	--set the x and y pos
	beam1.x = 1000
	beam1.y = display.contentCenterY*1.65

	--set the beam1 size
	beam1.width = 1000
	beam1.height = display.contentHeight/10

	-- rotate the beam1 45 degrees so it is on its angle
	beam1:rotate(90)

	-- send it to the back layer
	beam1:toBack()

	--add to physics
	physics.addBody(beam1, "static", {friction=0.5, bounce=0.6})

	--create bkg
	local bkg = display.newImage("Images/bkg.png", 0, 0)

		--set the x and y pos
		bkg.x = display.contentCenterX
		bkg.y = display.contentCenterY

	 	--set the bkg size
	 	bkg.width = display.contentWeight
		bkg.height = display.contentHeight

		-- send to back
		bkg:toBack()


------------------------------------------------------------------------------------------
--Functions
------------------------------------------------------------------------------------------

-- create the first ball
local function firstBall()
	-- creating first ball
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics 
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.45, radius=25})
end

------------------------------------------------------------------------------------------------------------

local function secondBall()
	-- creating first ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding to physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.6, radius=12.5})

	-- make it smaller than the original size
	ball2:scale(0.5, 0.5)
end

local function thirdBall()
	-- creating first ball
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding to physics
	physics.addBody(ball3, {density=3.0, friction=3.0, bounce=0.35, radius=37.5})

	-- make it smaller than the original size
	ball3:scale(1.5, 1.5)
end

local function fourthBall()
	-- creating first ball
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding to physics
	physics.addBody(ball4, {density=3.0, friction=3.5, bounce=0.2, radius=50})

	-- make it smaller than the original size
	ball4:scale(2.0, 2.0)
end




----------------------------------------------------------------------------------------------------------
-- TIMER DELAYS - call each function after the given millisecond
----------------------------------------------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)
timer.performWithDelay( 1000, thirdBall)
timer.performWithDelay( 1250, fourthBall)








---- create wall the goes up and down, --either upon arrow click or 
---- continually bumping off the opposing edge