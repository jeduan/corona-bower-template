-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

require('bower_require')({
	MobDebug = 'src.mobdebug'
})

local log = require 'bower.log'
local cacharro = require 'bower.cacharro'
local mobdebug = require 'bower.MobDebug'
mobdebug.start()

log.disabled = true
log 'Not printed'