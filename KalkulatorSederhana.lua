--ini adalah komentar
print("Pilih angka")
print("angka1 :")
local angka1 = io.read()
print("operator :")
local operator = io.read()
print("angka2 :")
local angka2 = io.read()

if operator == "+" then
   local hasil = angka1 + angka2
   print(hasil)
end

if operator == "-" then
   local hasil = angka1 - angka2
   print(hasil)
end

if operator == "*" then
   local hasil = angka1 * angka2
   print(hasil)
end

if operator == "/" then
   local hasil = angka1 / angka2
   print(hasil)
end
io.read()

local operators = {
  ["+"] = function(a,b) return a+b end,
  ["-"] = function(a,b) return a-b end,
  ["*"] = function(a,b) return a*b end,
  ["/"] = function(a,b) return a/b end
}

local function default()
   print "operator tidak ditemukan"
end
print("Pilih angka:")
print("angka3")
local angka3 = io.read()
print("angka4")
local angka4 = io.read()
print("pilih operator: + / - / * / /")

local func = operators[io.read()] or default
print(func(angka3,angka4))

io.read()
