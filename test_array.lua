require "array"
require "unittest"

ArrayTest = Test:extend()
ArrayTest.name = 'ArrayTest'

function ArrayTest:test_slice()
    self:assert_array_equal(Array.slice({1}, 3, 5), {})
    self:assert_array_equal(Array.slice({1, 2, 3}, 1, 2), {1, 2})
    self:assert_array_equal(Array.slice({1, 2, 3}, 2, 3), {2, 3})
    self:assert_array_equal(Array.slice({1, 2, 3}, 2, 30), {2, 3})
end

function ArrayTest:test_small_list()
    self:assert_equal(Array.find_median({1}), 1)
    self:assert_equal(Array.find_median({1,2}), 1)
    self:assert_equal(Array.find_median({1,2,3}), 2)
    self:assert_equal(Array.find_median({1,2,3,4}), 2)
    self:assert_equal(Array.find_median({1,2,3,4,5}), 3)
end
