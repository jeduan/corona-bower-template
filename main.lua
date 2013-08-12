-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

require('bower_require')()

local log = require 'bower.log'
local cacharro = require 'bower.cacharro'

log(package.loaded)

log.disabled = true
log 'Not printed'