-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local log = require 'vendor.log.log'
local cacharro = require 'vendor.cacharro.cacharro'

log 'todo funciona bien!'

log('simulator: ', cacharro.isSimulator)

log.disabled = true
log 'Not printed'