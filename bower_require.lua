local json = require 'json'

local function parseJson(filename, folder)
	folder = folder or system.ResourceDirectory
	local ret = nil
	local path = system.pathForFile(filename, folder)
	if not path then
		error(filename ..' not existent')
	end
	local file = io.open(path)
	if file then
		_ = file:read('*a')
		ret = json.decode(_)
	else
		error('Failed to open '..filename)
	end
	io.close(file)
	return ret
end

local function requireDependencies(t, requireFiles)
	local contents = parseJson('bower.json')
	requireFiles = requireFiles or {}
	local packages = {}

	if contents.dependencies then
		for key, _ in pairs(contents.dependencies) do
			packages[key] = true
			local str = 'vendor.'..key..'.'..key
			if requireFiles[key] then
				str = 'vendor.' .. key .. '.' .. requireFiles[key]
			end

			package.loaded['bower.'..key] = require(str)
		end
	end
	return packages
end

local mt = {
	__call = requireDependencies
}

return setmetatable({}, mt)

