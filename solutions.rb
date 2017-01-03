
arr = (0..30).to_a
arr << 33 << 45 << -1 << -2 << -5
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
# 22 Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно убывают.
# 26 Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.
# 30 Дан целочисленный массив. Упорядочить его по убыванию.
# 34 Дан целочисленный массив. Найти индекс максимального элемента.
# 38 Дан целочисленный массив. Найти индекс последнего максимального элемента.
# 42 Дан целочисленный массив. Найти минимальный нечетный элемент.
# 46 Дан целочисленный массив. Найти максимальный отрицательный элемент.
def task46 arr
  max =
  arr.each_index do |i|
    if arr[i] < 0 && arr[i] > max
      max = arr[i]
    end
  end
  max
end

# 50 Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.
# 54 Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным.
# 58 Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.
# 62 Дан целочисленный массив. Найти два наименьших элемента.
# def task62 arr
#   min arr.map! {|i| next if i == min(arr) else i}
# end

def min arr
  min = arr.first
  arr.each_index do |i|
    if arr[i] < min
      min = arr[i]
    end
  end
  min
end

# 66 Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.
def task66 arr
  arr.each {|i| print i.to_s + ' ' if i.odd? }
  puts
  arr.each {|i| print i.to_s + ' ' if i.even? }
end

# 70 Дано вещественное число R и массив вещественных чисел. Найти два элемента массива, сумма которых наименее близка к данному числу.
# 74 Дан целочисленный массив. Удалить все элементы, встречающиеся ровно три раза.
# 78 Дано целое число. Найти произведение его цифр.
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
# 110 Дан целочисленный массив. Поменять местами минимальный и максимальный элементы массива.

puts task46 arr

# Solved: 9 Question: 62 42

# 1 Сортировка массива: чет/нечет, обратный порядок, массив строк упорядочить по длине слов (группировка по длине слов)
# 2 Поиск в массиве: локальные максимумы
# 3 написать map, select, detect, count, all?, any? через reduce
# 4 flatten
# 5 hash merge, группировка(дан массив имен-фамилий, написать алгоритм поиска однофамильцев)

