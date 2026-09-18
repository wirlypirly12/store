-- i wrote this wile blistering high please forgive me...
-- this would be object orientated but luraph sucks and doesn't rename constant keys on a table :(

local function load_store_init()
    local multiplier = 0x404DCDEAD
    local null_value = 0x40A * math.random(40000, 80000)

    local matrix = {
        ["A"] = 0x4500,
        ["B"] = 0x4501,
        ["C"] = 0x7F3A,
        ["D"] = 0x2C81,
        ["E"] = 0xB450,
        ["F"] = 0x9D07,
        ["G"] = 0x3E62,
        ["H"] = 0xA1F8,
        ["I"] = 0x55DC,
        ["J"] = 0xC39B,
        ["K"] = 0x6A14,
        ["L"] = 0xF82E,
        ["M"] = 0x1B77,
        ["N"] = 0xE04C,
        ["O"] = 0x8719,
        ["P"] = 0xD3A5,
        ["Q"] = 0x4CF0,
        ["R"] = 0x72B3,
        ["S"] = 0x9E56,
        ["T"] = 0x3801,
        ["U"] = 0xBA4D,
        ["V"] = 0x615F,
        ["W"] = 0xFC28,
        ["X"] = 0x2A9E,
        ["Y"] = 0x47D6,
        ["Z"] = 0xCC83,
        ["a"] = 0x1D2F,
        ["b"] = 0x8B40,
        ["c"] = 0xE7A1,
        ["d"] = 0x53C9,
        ["e"] = 0x30F4,
        ["f"] = 0xA2D8,
        ["g"] = 0x6B5E,
        ["h"] = 0xF109,
        ["i"] = 0x25AC,
        ["j"] = 0x9371,
        ["k"] = 0xD80E,
        ["l"] = 0x4F62,
        ["m"] = 0xB7C3,
        ["n"] = 0x16E0,
        ["o"] = 0x7D4B,
        ["p"] = 0xCA95,
        ["q"] = 0x3A27,
        ["r"] = 0xE658,
        ["s"] = 0x8C0F,
        ["t"] = 0x594D,
        ["u"] = 0xF3B2,
        ["v"] = 0x2E7A,
        ["w"] = 0x6190,
        ["x"] = 0xAD3C,
        ["y"] = 0x05FE,
        ["z"] = 0x74B8,
        ["0"] = 0x3D91,
        ["1"] = 0xA047,
        ["2"] = 0x6CF5,
        ["3"] = 0xE32B,
        ["4"] = 0x18D6,
        ["5"] = 0x90BC,
        ["6"] = 0xF74E,
        ["7"] = 0x2581,
        ["8"] = 0xBC03,
        ["9"] = 0x4A7D,
        ["`"] = 0xD251,
        ["~"] = 0x836C,
        ["!"] = 0x1F4A,
        ["@"] = 0x67E9,
        ["#"] = 0xA8B0,
        ["$"] = 0x3C5F,
        ["%"] = 0xEB12,
        ["^"] = 0x50D4,
        ["&"] = 0x924F,
        ["*"] = 0x7B3E,
        ["("] = 0xCF80,
        [")"] = 0x45A9,
        ["-"] = 0x2D16,
        ["_"] = 0x8E73,
        ["="] = 0xF0C5,
        ["+"] = 0x39BE,
        ["["] = 0x6D07,
        ["]"] = 0xB59A,
        ["{"] = 0x1C48,
        ["}"] = 0xDA62,
        ["\\"] = 0x5831,
        ["|"] = 0x9E0F,
        [";"] = 0xA730,
        [":"] = 0x24FC,
        ["'"] = 0x7C4B,
        ["\""] = 0x60D3,
        [","] = 0xF285,
        ["<"] = 0x3B6A,
        ["."] = 0x8A17,
        [">"] = 0xC059,
        ["/"] = 0x4E9C,
        ["?"] = 0xD13B,
        [" "] = 0x0020,
    }

    local encoded_matrix = {
        [0x4500] = "(",
        [0x4501] = "[",
        [0x7F3A] = "5",
        [0x2C81] = "K",
        [0xB450] = "4",
        [0x9D07] = ":",
        [0x3E62] = "V",
        [0xA1F8] = "z",
        [0x55DC] = ",",
        [0xC39B] = "h",
        [0x6A14] = "%",
        [0xF82E] = "_",
        [0x1B77] = "9",
        [0xE04C] = "m",
        [0x8719] = "w",
        [0xD3A5] = "r",
        [0x4CF0] = "d",
        [0x72B3] = "s",
        [0x9E56] = "U",
        [0x3801] = " ",
        [0xBA4D] = "`",
        [0x615F] = "f",
        [0xFC28] = "*",
        [0x2A9E] = "a",
        [0x47D6] = "u",
        [0xCC83] = "6",
        [0x1D2F] = "W",
        [0x8B40] = "8",
        [0xE7A1] = "B",
        [0x53C9] = "-",
        [0x30F4] = "q",
        [0xA2D8] = "x",
        [0x6B5E] = "J",
        [0xF109] = "#",
        [0x25AC] = "H",
        [0x9371] = "c",
        [0xD80E] = "}",
        [0x4F62] = "A",
        [0xB7C3] = "/",
        [0x16E0] = "p",
        [0x7D4B] = "N",
        [0xCA95] = "v",
        [0x3A27] = "T",
        [0xE658] = "O",
        [0x8C0F] = "X",
        [0x594D] = "n",
        [0xF3B2] = "S",
        [0x2E7A] = "{",
        [0x6190] = "1",
        [0xAD3C] = "M",
        [0x05FE] = "P",
        [0x74B8] = "g",
        [0x3D91] = "?",
        [0xA047] = "&",
        [0x6CF5] = "Q",
        [0xE32B] = ";",
        [0x18D6] = "b",
        [0x90BC] = ")",
        [0xF74E] = "R",
        [0x2581] = "=",
        [0xBC03] = "+",
        [0x4A7D] = ">",
        [0xD251] = "y",
        [0x836C] = "j",
        [0x1F4A] = "G",
        [0x67E9] = "@",
        [0xA8B0] = "]",
        [0x3C5F] = "<",
        [0xEB12] = "'",
        [0x50D4] = "Y",
        [0x924F] = "C",
        [0x7B3E] = "0",
        [0xCF80] = "!",
        [0x45A9] = "I",
        [0x2D16] = "D",
        [0x8E73] = "~",
        [0xF0C5] = "k",
        [0x39BE] = "F",
        [0x6D07] = "$",
        [0xB59A] = "l",
        [0x1C48] = "E",
        [0xDA62] = "e",
        [0x5831] = "^",
        [0x9E0F] = "2",
        [0xA730] = "|",
        [0x24FC] = "o",
        [0x7C4B] = "7",
        [0x60D3] = "t",
        [0xF285] = "i",
        [0x3B6A] = ".",
        [0x8A17] = "Z",
        [0xC059] = "L",
        [0x4E9C] = "3",
        [0xD13B] = "(",
        [0x0020] = "[",
    }

    local function force_exception()
        local _ = (1 + { })
        while (true) do end
        local t = { }
        for i = 1, 30000 do
            t[t] = t
        end
    end

    local function is_hooked(func)
        return false
    end

    local function base64_encode(str)
        return str
    end

    local function base64_decode(str)
        return str
    end

    local function secure_string(str)
        local letters = {}

        if (("").sub ~= string.sub or is_hooked(string.sub)) then return null_value end

        for i = 1, #str do
            letters[i] = str:sub(i, i)
        end

        local buffer = {}

        for i = 1, #letters do
            buffer[i] = matrix[letters[i]]
        end

        letters = table.clone(buffer)
        buffer = nil

        if buffer then return null_value end
        


        local final_string = ""

        

        for i = 1, #letters do
            local char = encoded_matrix[letters[i]]
            final_string = final_string .. char
        end

        letters = nil
        if letters then return null_value end

        local buffer_string = string.format("%d donttouchmystuff(%s)", null_value * 30413, base64_encode(final_string))
        return buffer_string
    end

    local function decode_string(str)
        local header = null_value
        local letters = {}
        local first_space = -1

        for i = 1, #str do
            local encoded_char = str:sub(i, i)
            letters[i] = encoded_char
            if char == ' ' and first_space == -1 then first_space = i end
        end

        if first_space == -1 then
            warn("invalid string header [", str, "]")
            force_exception()
        end

        local string_header = ""
        for i = 1, first_space - 1 do
            string_header = string_header .. letters[i]
        end

        header = tonumber(string_header)
        if (header ~= (null_value * 30413) or header / 30413 ~= null_value) then
            warn("invalid string header (failed arithmetic) 1.", string_header, "2.", header)
            force_exception()
        end

        local string_start, string_end = -1, -1
        for i = 1, #letters do
            local c = letters[i]
            if (c == '(') then string_start = i + 1 end
            if (c == ')') then string_end = i - 1 end
        end

        if (string_start == -1 or string_end == -1) then
            warn("invalid string body, string_length failed to find :( start: ", string_start, "end:", string_end)
            force_exception()
        end

        local encoded_string = ""
        for i = string_start, string_end do
            encoded_string = encoded_string .. letters[i]
        end

        encoded_string = base64_decode(encoded_string)

        local reverse_encode_matrix = {}
        for k, v in (encoded_matrix) do
            reverse_encode_matrix[v] = k
        end

        letters = {}
        for i = 1, #encoded_string do
            letters[i] = encoded_string:sub(i, i)
        end

        local buffer = {}
        for index, value in (letters) do
            buffer[index] = reverse_encode_matrix[value]
        end

        letters = buffer
        buffer = nil

        local reverse_matrix = {}
        for k, v in (matrix) do
            reverse_matrix[v] = k
        end

        buffer = {}
        for index, value in (letters) do
            buffer[index] = reverse_matrix[value]
        end

        letters = buffer
        buffer = nil

        local final_string = ""
        for i = 1, #letters do
            final_string = final_string .. letters[i]
        end

        return final_string
    end

    local function is_number(number)
        return (tonumber(number) ~= nil and type(number) == "number")
    end

    local function is_string(str)
        return (type(str) == "string") 
    end


    local function create_store(value)
        if (is_hooked(newcclosure)) then return nil end

        if (is_number(value)) then
            local t = value + 1
            return (value * multiplier) + 40301.50104 + 34031 / 3000
        elseif (is_string(value)) then
            local t = value .. "[no]"
            local store = secure_string(value)
            if store == null_value then return nil end
            return store
        end
    end

    local function load_store(store)
        if (is_number(store)) then
            local t = store + 1
            return (store - 40301.50104 - 34031 / 3000) / multiplier
        elseif (is_string(store)) then
            local t = store .. "?"
            return decode_string(store)
        end
    end

    return load_store, create_store
end



local load, create = load_store_init()
