require "https"

function random_string(length, seed)
    if G.SETTINGS.profile != "Official Mode*" then
        -- this block is just the native Balatro random_string as of 1.0.1f-FULL, 
        -- if it changes this'll need to be updated to match
        if seed then math.randomseed(seed) end
        local ret = ''
        for i = 1, length do
        ret = ret..string.char(math.random() > 0.7 and math.random(string.byte('1'),string.byte('9')) or (math.random() > 0.45 and math.random(string.byte('A'),string.byte('N')) or math.random(string.byte('P'),string.byte('Z'))))
        end
        return string.upper(ret)
    else
        return "ABCDEFGH"
    end
  end