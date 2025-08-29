setmetatable(_G, {
    __call = function(self, scriptObject)
        if not self[scriptObject] then
            self[scriptObject] = {
                Name = scriptObject.Name,
                Parent = scriptObject.Parent,
                LoadedAt = os.clock()
            }
        end
        return self[scriptObject]
    end
})