# 1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.
def task1
  p a = [1, 2, 3, 4, 5, 6, 7, 8]
  p a.partition.with_index { |v, i| i.even? }.flatten
end

# 5. Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. 
# Первый и последний элементы массива не изменять.
def task5
  p a = [4, 2, 5, 4, 3, 6, 9, 8]
  p a.each_with_index { |v, i| a[i] = v + a.first if v.even? && i !=0 && i != a.size-1 }
end

# 9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.
def task9
  p a = [4, -2, 3, 0, 1, -1, 2]
  p a.map { |i| i > 0 ? i = a.min : i }
end

# 13. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.
def task13
  a = [1, 2, 3, 4, 5, 6, 7, 8]
  p a.rotate(1)
end

# 17. Дан целочисленный массив. Найти количество его локальных максимумов.
def task17
  p a = [2, 3, 1, -1, 0, -2, 4]
  p a[1..a.size - 2].select.with_index(1) { |v, i| a[i] > a[i - 1] && a[i] > a[i + 1] }.count
end

# 21. Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно возрастают.
def task21
  a = [2, 3, 5, 10, 10, 2, 4]
  count = 0
  a[1..a.size-2].each.with_index(1) { |v, i| count += 1 if (a[i] > a[i+1] && a[i] >= a[i-1]) || (a[i] <= a[i+1] && i == a.size-2) }
  p count
end

# 25. Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.
def task25
  p a = [1, 3, -5, 4, 2, -5, 6]
  i = 0
  a[0..a.size-1].each do |v| 
    if v > 0
      a.insert(i, a.first) 
      i += 1
    end
    i += 1
  end
  p a
end

# 29. Дан целочисленный массив. Упорядочить его по возрастанию
def task29
  p a = [4, 2, 5, 1]
  p a.sort
end

# 33. Дан целочисленный массив. Найти индекс минимального элемента.
def task33
  p a = [4, 2, 5, 1]
  p a.index(a.min)
end

# 37. Дан целочисленный массив. Найти индекс последнего минимального элемента
def task37
  p a = [1, 7, -3, 6, -3, 9]
  i = a.reverse.index(a.min)
  p a.size - 1 - i
end

# 41. Дан целочисленный массив. Найти минимальный четный элемент
def task41
  p a = [2, 7, -3, 6, -4, 9]
  p a.select { |i| i.even? }.min
end

# 45. Дан целочисленный массив. Найти минимальный положительный элемент.
def task45
  p a = [2, 7, -3, 6, -4, 9]
  p a.select { |i| i > 0 }.min
end

# 49. Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.
def task49
  p a = [2, 7, -4, 6, -4, 9]
  p a.index(a.min)
end

# 51. Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.
def task51
  p a = [2, 7, -4, 6, -4, 5]
  max = a.index(a.max)
  p a.size - 1 - max
end

# 53. Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным.
def task53
  p a = [2, 7, -4, 7, 3, 4]
  p a.rindex(a.max)
end

# 57. Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или 
# максимального) элемента.
def task57
  p a = [2, 7, -4, 7, 3, 4]
  p a.index(a.min) < a.index(a.max) ? a.index(a.min) : a.index(a.max)
end

# 61. Дан целочисленный массив. Найти два наибольших элемента.
def task61
  p a = [2, 7, -4, 8, 3, 4]
  p a.sort[a.last,a.last - 1]
end

# 65. Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.
def task65
  p a = [1, 3, 8, 5, 4, 2, 0]
  p a.partition { |i| i.even? }.flatten
end

# 69. Дано вещественное число R и массив вещественных чисел. 
# Найти два элемента массива, сумма которых наиболее близка к данному числу.
def task69
  p r = 10.2
  p a = [1.15, 3.6, 8.4, 5.55]
  comb = a.combination(2).to_a
  min = comb.map.with_index { |v, i| (v.first + v.last - r).abs }.min
  p comb.select { |i| (i.first + i.last - r).abs == min }.flatten
end

# 73. Дан целочисленный массив. Удалить все элементы, встречающиеся ровно два раза.
def task73
  p a = [1, 2, 1, 5, 2, 0, 2, 0]
  p a - a.select { |i| a.count(i) == 2 }
end

# 77. Дано целое число. Найти сумму его цифр
def task77
  p n = 546
  p n.to_s.chars.inject(0){ |acc, i| acc + i.to_i}
end

# 81. Дан дипапазон a..b. Получить массив из чисел, расположенных в этом диапазоне 
# (исключая сами эти числа), в порядке их убывания, а также размер этого массива.
def task81
  p a = (1..8).to_a
  p b = a[1..a.size-2].reverse
  p b.size
end

# 85. Дано натуральное число N. Если N - нечетное, то найти произведение 1*3*…*N; если N - четное, 
# то найти произведение 2*4*…*N. 2.4.6.8
def task85
  n = 6
  p a = (1..n).to_a
  p a.partition { |i| i.even? }.select { |i| i.index(a.last) }.flatten.inject(1) { |acc, i| acc * i }
end

# 89. Дан целочисленный массив. Найти все нечетные элементы.
def task89
  p a = [1, 3, 8, 5, 4, 2, 0]
  p a.select { |i| i.odd? }
end

# 93. Дан целочисленный массив и число К. 
# Если все элементы массива меньше К, то вывести true; в противном случае вывести false.
def task93
  p a = [1, 3, 8, 5, 4, 2, 0]
  p k = 10
  p a.select { |i| i > k }.count == 0 ? true : false
end

# 97. Дан целочисленный массив и число К. Вывести индекс последнего элемента, меньшего К.
def task97
  p a = [1, 5, 4, 2, 10]
  p k = 5
  b = []
  a.each_with_index { |v, i| b << i if v < k }
  p b.last
end

# 101. Дан целочисленный массив. Вывести индексы элементов, 
# которые больше своего левого соседа, и количество таких чисел.
def task101
  p a = [1, 3, 8, 5, 4, 2, 3]
  p a[1..a.size-1].select.with_index{ |v, i| p i+1 if a[i+1] > a[i] }.count
end

# 105. Дан целочисленный массив. Если данный массив образует убывающую последовательность, то вывести nil, 
# в противном случае вывести номер первого числа, нарушающего закономерность.
def task105
  p a = [9, 8, 17, 6, 3, 5, 2, 1]
  p a[0..a.size-2].map.with_index { |v, i| i+1 if v < a[i+1] }.compact.first
end

# 109. Дан целочисленный массив. Найти минимальный и максимальный элемент в массиве.
def task109
  p a = [1, 3, 8, 15, 4, 2, 3]
  max = 0
  a.each{|i| max = i if i > max}
  p a.min; p max
end


# Сортировка массива: чет/нечет
def srt
  p a = [1, 3, 8, 15, 4, 2, 3]
  p a.partition { |i| i.even? }.map { |array| array.sort }.flatten
end

# Сортировка массива: обратный порядок
def rvr
  p a = [1, 3, 8, 15, 4, 2, 3]
  i = 0
  while i < (a.size)/2 do
    t = a[i]
    a[i] = a[a.size - 1 - i]
    a[a.size - 1 - i] = t
    i += 1
  end
  p a
end

# Сортировка массива: массив строк упорядочить по длине слов (группировка по длине слов)
def sort_by_length
  p a = ['three', 'one', 'four', 'six', 'ten', 'si', 'am']
  p h = a.inject(Hash.new{[]}) { |acc, el| acc[el.size] += [el]; acc }.sort.to_h
end

# Поиск в массиве: локальные максимумы
def local_max
  a = [2, 3, 1, -1, 0, -2, 4]
  i = 1
  c = []
  while i < a.size - 1 do
    if a[i] > a[i-1] && a[i] > a[i+1]
      c << a[i]
    end
    i += 1
  end
  p a; p c; p c.count
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
    array.reduce(true) { |acc, el| return false if !yield(el); acc }
  else
    array.reduce(true) { |acc, el| return false if el == nil || el == false; acc }
  end
end

# any? через reduce
def new_any?(array)
  if block_given?
    array.reduce(false) { |acc, el| return true if yield(el); acc }
  else
    array.reduce(false) { |acc, el| return true if el != nil && el != false; acc }
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
    h = h1
    h2.each { |k, v| h[k] = v }
  end
  h
end

def sort_by_last_name
  p a = ['James Bond', 'John Rambo', 'John Bond', 'Jack Rambo', 'Billy Idol']
  p a.map { |i| i.split(' ') }.inject(Hash.new{[]}) { |acc, el| acc[el.last] += [el.join(' ')]; acc }
end
