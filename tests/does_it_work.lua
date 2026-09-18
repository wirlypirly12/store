-- does it work?
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
