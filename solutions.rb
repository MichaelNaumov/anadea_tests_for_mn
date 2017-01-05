
arr = (0..30).to_a
arr << 33 << 45 << -1 << 46 << -5 << 46 << 43 << 41 << 46 << 0
arr2 = 30.times.map{ Random.rand(-10.99..10.99) }
arr3 = ['w', 'wo', 'word', 'wor', 'lofsas']

# 2 Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.
def task2 arr
  arr.each_index {|i| print i.to_s + ' ' if i.odd? }
  puts
  arr.each_index {|i| print i.to_s + ' ' if i.even? }
end

# 6 Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.
def task6 arr
  arr[1...arr.length-1].map! {|i| i.odd? ? i += arr.last : i}.insert(0, arr.first) << arr.last
end

# 10 Дан целочисленный массив. Заменить все положительные элементы на значение максимального.
def task10 arr
  max = 0
  arr.each_index do |i|
  	if arr[i] > max
  	  max = arr[i]
  	end
  end
  arr.map! {|i| i > 0 ? i = max : i}
end

# 14 Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.
def task14 arr
  arr.rotate -1
end

# 18 Дан целочисленный массив. Найти количество его локальных минимумов.
def task18 arr
  count = 0
  arr[1..arr.length-1].each_index do |i|
    if  arr[i-1] > arr[i] && arr[i] < arr[i+1]
      count = count + 1
    end
  end
  count
end

# 22 Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно убывают.
def task22 arr
	count = 0
	tmp = 0
	arr[1..arr.length-1].each_index do |i|
	  if arr[i] > arr[i+1]
	  	tmp = tmp + 1
	  	if tmp > 1
	  		count = count + 1
	  	end
	  end
	end
	count
end

#26 Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.
def task26 arr
  elem = arr[0]
  array = arr.map! do |i| 
  	if i < 0
  		arr.insert([elem,i])
  	else
  		i
  	end
  end
end

# 30 Дан целочисленный массив. Упорядочить его по убыванию.
def task30 arr
  arr.sort.reverse
end

# 34 Дан целочисленный массив. Найти индекс максимального элемента.
def task34 arr
  puts arr.index(arr.max)
end

# 38 Дан целочисленный массив. Найти индекс последнего максимального элемента.
def task34 arr
  puts arr.rindex(arr.max)
end

# 42 Дан целочисленный массив. Найти минимальный нечетный элемент.
def task42 arr
  arr.select {|i| i.odd?}.sort[0]	
end

# 46 Дан целочисленный массив. Найти максимальный отрицательный элемент.
def task46 arr
  new_arr = arr.select! {|i| i if i < 0}
  max = new_arr.first
  new_arr.each do |i|
    if i > max
      max = i
    end
  end
  max
end

# 50 Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.
def task50 arr
	count = 0
	arr[0..arr.index(arr.max)].each_index do |i|
		count = count + 1 
	end
	count
end

# 54 Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным.
def task54 arr
	count = 0
	arr[0..arr.rindex(arr.min)].each_index do |i|
		count = count + 1 
	end
	count
end

# 58 Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.
def task54 arr
	puts "Last minimal index #{arr.rindex(arr.min)}"
	puts "Last maximal index #{arr.rindex(arr.max)}"
end

# 62 Дан целочисленный массив. Найти два наименьших элемента.
def task62 arr
  puts arr.sort[0]
  puts arr.sort[1]
end

# 66 Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.
def task66 arr
  arr.each {|i| print i.to_s + ' ' if i.odd? }
  puts
  arr.each {|i| print i.to_s + ' ' if i.even? }
end

# 70 Дано вещественное число R и массив вещественных чисел. Найти два элемента массива, сумма которых наименее близка к данному числу.
def task70 arr, r
	deltas = []
	arr[0..arr.length-2].each_index do |i|
		tmp = arr[i] + arr[i+1]
		deltas << (tmp - r).abs
	end
	deltas.max
end

# 74 Дан целочисленный массив. Удалить все элементы, встречающиеся ровно три раза.
def task74 arr
  hsh = arr.each_with_object(Hash.new 0) do |num, counter|
    counter[num] += 1
  end
  hsh
  hsh.each do |key, val|
  	if val == 3
  		arr.delete(key)
  	end
  end
  arr
end

# 78 Дано целое число. Найти произведение его цифр.
def task78 num
	num.to_s.split("").inject(1){ |result, elem| result * elem.to_i }
end

# 82 Дано число А и натуральное число N. Найти результат следующего выражения 1 + А + А*2 + А*3 + … + А*N.
def task82 n, a
  sum = 1
  n.times do |i|
    sum = sum + a * i
  end
  sum
end

# 86 Дан целочисленный массив. Найти среднее арифметическое его элементов.
def task86 arr
  arr.inject{|mem, i| i + mem.to_f} / arr.length
end

# 90 Дан целочисленный массив. Найти количество нечетных элементов.
def task90 arr
  count = 0
  arr.each do |i|
    if i.odd?
     count = count + 1
    end
  end
  count
end

# 94 Дан целочисленный массив и число К. Если все элементы массива больше К, то вывести true; в противном случае вывести false.
def task94 arr, k
  arr.each do |i|
    if i < k
      return false
      break
    end
  end
  return true
end

# 98 Дан целочисленный массив. Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел.
def task98 arr
  count = 0
  arr.each_index do |i|
    if arr[i] < arr[i-1] && i > 0
      count = count + 1
      puts i
    end
  end
  print "Number of neighbours: " + count.to_s
end

# 102 Дан целочисленный массив. Проверить, образует ли он возрастающую последовательность.
def task102 arr
  arr.each_index do |i|
    if arr[i] < arr[i+1] && i != (arr.length - 1)
      next
    else
      return false
    end
  return true
  end
end

# 106 Дан целочисленный массив, содержащий по крайней мере два нуля. Вывести сумму чисел из данного массива, расположенных между первыми двумя нулями.
def task106 arr
	arr[arr.index(0)..arr.rindex(0)].inject(1) {|sum,elem| sum = sum + elem}
end

# 110 Дан целочисленный массив. Поменять местами минимальный и максимальный элементы массива.
def task110 arr
	arr.each_index do |i|
		tmp = arr.max
		if arr[i] == arr.max 
			arr[i] = arr.min 
		elsif arr[i] == arr.min 
			arr[i] = tmp
		end
	end
end

# 1 Сортировка массива: чет/нечет, обратный порядок, массив строк упорядочить по длине слов (группировка по длине слов)
def odd_even_sort arr
	odds = arr.select {|i| i if i.odd?}.sort
	evens = arr.select {|i| i if i.even?}.sort
	resulting = odds + evens
end

def reversed_sort arr
	arr.sort.reverse
end

def words_sort arr
	arr.sort_by{ |word| word.size }
end

# 2 Поиск в массиве: локальные максимумы
def local_max arr
  count = 0
  arr[1..arr.length-1].each_index do |i|
    if  arr[i-1] < arr[i] && arr[i] > arr[i+1]
      count = count + 1
      puts "Local maximum is: #{arr[i]}"
    end
  end
  count
end

# 3 написать map, select, detect, count, all?, any? через reduce

def custom_map arr
	arr.reduce([]) {|sum, item| sum << yield(item)}
end

def custom_select arr
 	arr.reduce([]) {|sum, item| yield(item) ? sum << item : sum }
end

def custom_detect arr
 	arr.reduce([]) {|item| yield(item) ? item : nil}
end

def custom_count arr
	arr.reduce() {|sum, item| yield(item) ? sum = sum + 1 : sum }
end

def custom_all? arr
	arr.reduce() {|sum, item| yield(item ? true : false) }
end

def custom_any? arr
	arr.reduce() {|sum, item| yield(item ? false : true) }
end

# 4 flatten
def custom_flatten arr
  arr.each_with_object([]) do |elem, flattened|
    flattened.push *(elem.is_a?(Array) ? custom_flatten(elem) : elem)
  end
end

# 5 hash merge, группировка(дан массив имен-фамилий, написать алгоритм поиска однофамильцев)
hsh = {"Василий" => "Иванов", "Петр" => "Александров", "Андрей" => "Иванов"}
count = 0
hsh.each_value do |val|
  	if hsh.has_value? val

  	end
end

# print custom_flatten(arr) {|i| i != 0}