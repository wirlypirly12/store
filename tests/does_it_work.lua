-- does it work?
-- output:
--[[
[main_constants] -- 
	[1]: super_secret_key
	[2]: 123456789


[main_stack] --
	[1]: MTk5MjQ4NDU4MTEyMCBkb250dG91Y2hteXN0dWZmKFdGTjJjVTkrV0hGQ1QzRnVmbjF4VUE9PSk=
	[2]: 2147219912929474600
]]
local load_store, create_store = require("@root/store.lua")

for i = 1, 100 do print('\n') end

local function main()
    local test_store_string = create_store("super_secret_key")
    local test_store_int = create_store(123456789)

    local _ = (function()
        print("[main_stack] --")
        for i, v in getstack(2) do
            print(`\t[{i}]: {v}`)
        end
        print("\n")
    end)()
end

print("[main_constants] -- ")
for i, v in getconstants(main) do
    print(`\t[{i}]: {v}`)
end
print("\n")

return main()
