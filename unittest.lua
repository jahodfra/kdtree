require "rxi"

Test = Class:extend()

function Test:assert_equal(a, b)
    if a ~= b then
        error(string.format('%s != %s', a, b))
    end
end

function Test:assert_array_equal(a, b)
    if not Array.equal(a, b) then
        error(string.format("%s != %s", Array.to_string(a), Array.to_string(b)))
    end
end

function Test:test_all()
    for b, c in pairs(self) do
        if type(c) == "function" and b:find("test_") == 1 then
            local ok, err = xpcall(c, debug.traceback, self)
            if not ok then
                print(string.format('Fail %s.%s:\n%s', self.name, b, err))
            else
                print(string.format('. %s.%s', self.name, b))
            end
        end
    end
end
