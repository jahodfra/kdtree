-- RXI class toolkit --
Class = {}
Class.__index = Class
function Class:new()end
function Class:extend()local a={}for b,c in pairs(self)do if b:find("__")==1 then a[b]=c end end;a.__index=a;a.super=self;setmetatable(a,self)return a end
function Class:__call(...)local a=setmetatable({},self)a:new(...)return a end
function Class:__tostring()return ""end
function Class:implement(...)for a,b in pairs({...})do for c,d in pairs(b)do if self[c]==nil and type(d)=="function"then self[c]=d end end end end
function Class:is(a)local b=getmetatable(self)while b do if b==a then return true end;b=getmetatable(b)end;return false end
