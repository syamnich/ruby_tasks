# 1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.
def task1 a
  a.partition.with_index { |v, i| i.even? }.flatten
end

# 5. Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. 
# Первый и последний элементы массива не изменять.
def task5 a
  a.each_with_index { |v, i| a[i] = v + a.first if v.even? && i != 0 && i != a.size-1 }
end

# 9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.
def task9 a
  a.each_with_index { |v, i| a[i] = a.min if v > 0 && a[i] != a.min }
end

# 13. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.
def task13 a
  a.rotate(1)
end

# 17. Дан целочисленный массив. Найти количество его локальных максимумов.
def task17 a
  a.each_cons(3).select.count { |x, y, z| y > x && y > z }
end

# 21. Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно возрастают.
def task21 a
  count = 0
  a[0..-2].each_with_index do |v, i| 
    if v > a[i+1] && i > 0 && v >= a[i-1] || v <= a[i+1] && i == a.size-2
      count += 1
    end
  end
  count
end

# 25. Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.
def task25 a
  a.reduce([]) { |acc, i| acc << a.first if i > 0; acc << i; acc }
end

# 29. Дан целочисленный массив. Упорядочить его по возрастанию
def task29 a
  a.sort
end

# 33. Дан целочисленный массив. Найти индекс минимального элемента.
def task33 a
  a.index(a.min)
end

# 37. Дан целочисленный массив. Найти индекс последнего минимального элемента
def task37 a
  a.rindex(a.min)
end

# 41. Дан целочисленный массив. Найти минимальный четный элемент
def task41 a
  a.select { |i| i.even? }.min
end

# 45. Дан целочисленный массив. Найти минимальный положительный элемент.
def task45 a
  a.select { |i| i > 0 }.min
end

# 49. Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.
def task49 a
  a.index(a.min)
end

# 51. Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.
def task51 a
  max = a.index(a.max)
  a.size - 1 - max
end

# 53. Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным.
def task53 a
  a.rindex(a.max)
end

# 57. Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или 
# максимального) элемента.
def task57 a
  [a.index(a.max), a.index(a.min)].min
end

# 61. Дан целочисленный массив. Найти два наибольших элемента.
def task61 a
  a.sort[-2..-1]
end

# 65. Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.
def task65 a
  a.partition { |i| i.even? }.flatten
end

# 69. Дано вещественное число R и массив вещественных чисел. 
# Найти два элемента массива, сумма которых наиболее близка к данному числу.
def task69 a, r
  a.combination(2).to_a.min_by { |(x, y)| (x + y - r).abs }
end

# 73. Дан целочисленный массив. Удалить все элементы, встречающиеся ровно два раза.
def task73 a
  a - a.select { |i| a.count(i) == 2 }
end

# 77. Дано целое число. Найти сумму его цифр
def task77 n
  n.to_s.chars.inject(0){ |acc, i| acc + i.to_i }
end

# 81. Дан дипапазон a..b. Получить массив из чисел, расположенных в этом диапазоне 
# (исключая сами эти числа), в порядке их убывания, а также размер этого массива.
def task81 range
  a = range.to_a
  b = a[1..-2].reverse
  { array: b, size: b.size }
end

# 85. Дано натуральное число N. Если N - нечетное, то найти произведение 1*3*…*N; если N - четное, 
# то найти произведение 2*4*…*N.
def task85 n
  n.step(1, -2).reduce(:*)
end

# 89. Дан целочисленный массив. Найти все нечетные элементы.
def task89 a
  a.select { |i| i.odd? }
end

# 93. Дан целочисленный массив и число К. 
# Если все элементы массива меньше К, то вывести true; в противном случае вывести false.
def task93 a, k
  a.count { |i| i > k } == 0
end

# 97. Дан целочисленный массив и число К. Вывести индекс последнего элемента, меньшего К.
def task97 a, k
  a.index(a.reverse.detect { |v| v < k })
end

# 101. Дан целочисленный массив. Вывести индексы элементов, 
# которые больше своего левого соседа, и количество таких чисел.
def task101 a
  arr = []
  a[1..-1].each.with_index(1) { |v, i| arr << i if v > a[i-1] }
  { indices: arr, count: arr.size }
end

# 105. Дан целочисленный массив. Если данный массив образует убывающую последовательность, то вывести nil, 
# в противном случае вывести номер первого числа, нарушающего закономерность.
def task105 a
  a[1..-1].detect.with_index(1) { |v, i| v > a[i-1] }
end

# 109. Дан целочисленный массив. Найти минимальный и максимальный элемент в массиве.
def task109 a
  { min: a.min, max: a.max }
end

# Сортировка массива: чет/нечет
def srt a
  a.partition { |i| i.even? }.map { |array| array.sort }.flatten
end

# Сортировка массива: обратный порядок
def rvr a
  i = 0
  while i < (a.size)/2 do
    t = a[i]
    a[i] = a[a.size - 1 - i]
    a[a.size - 1 - i] = t
    i += 1
  end
  a
end

# Сортировка массива: массив строк упорядочить по длине слов (группировка по длине слов)
def group_by_length a
  a.inject(Hash.new{[]}) { |acc, el| acc[el.size] += [el]; acc }.sort.to_h
end

# Поиск в массиве: локальные максимумы
def local_max a
  i = 1
  arr = []
  while i < a.size - 1 do
    if a[i] > a[i-1] && a[i] > a[i+1]
      arr << a[i]
    end
    i += 1
  end
  arr
end

# map через reduce
def new_map(array)
  array.reduce([]) { |acc, el| acc << yield(el) }
end

# select через reduce
def new_select(array)
  array.reduce([]) { |acc, el| yield(el) ? acc << el : acc }
end

# detect через reduce
def new_detect(array)
  array.reduce { |acc, el| return el if yield(el)}
end

# count через reduce
def new_count(array, item = nil)
  if block_given?
    array.reduce([]) { |acc, el|  yield(el) ? acc << el : acc }.size
  elsif item
    array.select { |i| i == item }.size
  else
    array.size
  end
end

# all? через reduce
def new_all?(array)
  if block_given?
    array.reduce(true) { |acc, el| acc && yield(el) }
  else
    array.reduce(true) { |acc, el| acc && !el.nil? && !el == false }
  end
end

# any? через reduce
def new_any?(array)
  if block_given?
    array.reduce(false) { |acc, el| acc || yield(el) }
  else
    array.reduce(false) { |acc, el| acc || (!el.nil? && !el == false) }
  end
end

# flatten
def new_flatten(arrays, level = -1) 
  flat = []
  arrays.each do |el|
    if level != 0 && el.kind_of?(Array)
      flat.concat(new_flatten(el, level - 1))
    else
      flat << el
    end
  end
  flat
end

def hash_merge(h1, h2)
  if block_given?
    h = {}
    common_keys = h1.select { |k, v| h2.has_key?(k) }.keys
    h1.each{ |k, v| h[k] = v unless common_keys.include?(k) }
    h2.each{ |k, v| h[k] = v unless common_keys.include?(k) }
    common_keys.each { |k| h[k] = yield(k, h1[k], h2[k]) }
  else
    h = h1.dup
    h2.each { |k, v| h[k] = v }
  end
  h
end

def group_by_last_name a
  a.map { |i| i.split(' ') }.inject(Hash.new{[]}) { |acc, el| acc[el.last] += [el.join(' ')]; acc }
end
