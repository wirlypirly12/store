-- same as the other test just hides the constants!

-- output:
--[[
encrypted:  365125980925.8447 MTkwODM2Mzc0Mzc3MCBkb250dG91Y2hteXN0dWZmKGNYQkNUaTF4TFg1WWJrOUljRW89KQ==
decoded:  21 encoded_string
[main_stack] --
	[1]: 365125980925.8447
	[2]: {
		[86934788077.84471]: 1738694995612.8447
		[69547838524.84471]: 1929951440695.8447
		[243417334054.8447]: 1790855844271.8447
		[226030384501.8447]: 1912564491142.8447
		[104321737630.84471]: 1756081945165.8447
		[121708687183.84471]: 1738694995612.8447
		[34773939418.8447]: 1912564491142.8447
		[173869535842.8447]: 2016886188460.8447
		[52160888971.8447]: 1721308046059.8447
		[191256485395.8447]: 1982112289354.8447
		[208643434948.8447]: 1825629743377.8447
		[139095636736.8447]: 1651760247847.8447
		[156482586289.8447]: 1999499238907.8447
		[17386989865.844707]: 1756081945165.8447
	}
	[3]: MTkwODM2Mzc0Mzc3MCBkb250dG91Y2hteXN0dWZmKGNYQkNUaTF4TFg1WWJrOUljRW89KQ==

[main_constants] -- 
	[1]: 
	[2]: string
	[3]: char
	[5]: encrypted: 
	[6]: decoded: 
]]

local load, create = load_store_init()

local function main()
    local constant = create((201 * 21) - 4_200)

    local b = create{101, 110, 99, 111, 100, 101, 100, 95, 115, 116, 114, 105, 110, 103}

    local constant_str = ""

    for i, v in load(b) do
        constant_str..= string.char(v)
    end
    constant_str = create(constant_str)

    print("encrypted: ", constant, constant_str)
    print("decoded: ", load(constant), load(constant_str))

    local _ = (function()
        print("[main_stack] --")
        for i, v in getstack(2) do
            
            if (typeof(v) == "table") then
                print(`\t[{i}]: {'{'}`)
                for z, x in v do
                    print(`\t\t[{z}]: {x}`)
                end
                print("\t}")
                continue
            end
            print(`\t[{i}]: {v}`)
        end
        print("\n")
    end)()
end

main()

print("[main_constants] -- ")
for i, v in getconstants(main) do
    print(`\t[{i}]: {v}`)
end
print("\n")
