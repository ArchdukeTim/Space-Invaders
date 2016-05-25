local Barrier = {}
Barrier.__index = Barrier

startingConfig = {  {1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1, 1},
    {1, 0, 0, 0, 0, 1}}

size = 25

setmetatable(Barrier, {
    __call = function (cls, ...)
        return cls.new(...)
    end,
})

function Barrier.new(startX)
    print("Hello")
    local self = setmetatable({}, Barrier)
    self.config = startingConfig
    self.startX = startX
    return self
end

function Barrier:onCollide(x)
    local relativeX = math.floor((x-self.startX)%size)
    for i in self.config do
        for j in i do
            if i[j] == 1 then
                i[j] = 0
                return True
            end

        end
    end
end

function Barrier:getStart()
    return self.startX
end

return Barrier


