require "kdtree"
require "unittest"

KDTreeTest = Test:extend()
KDTreeTest.name = 'KDTreeTest'

function KDTreeTest:test_tree()
    local tree = KDTree({1, 3, 5, 10}, {10, 5, 4, 8})
end
