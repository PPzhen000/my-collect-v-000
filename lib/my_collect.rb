def my_collect(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
collection = []
my_collect(array) do |name|
  collection << name.split(" ").first
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  collection << lang.upcase
end
