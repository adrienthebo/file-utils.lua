-- File utilities
--

local File = {}

function File.splitpath(path)
  local dir, file = path:match('(.*)/(.*)')
  return {dir, file}
end

function File.dirname(path)
  return File.splitpath(path)[1]
end

function File.basename(path)
  return File.splitpath(path)[2]
end

function File.join(...)
  local str = ""

  for i, v in ipairs(arg) do
    str = str .. arg[i]

    if(i < arg.n) then
      str = str .. "/"
    end
  end

  return str
end

function File.getfile()
  return debug.getinfo(2, 'S').source:sub(2)
end

function File.getdir()
  return File.dirname(debug.getinfo(2, 'S').source:sub(2))
end

return File
