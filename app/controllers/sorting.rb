def sorting(array)
  return array if array.length==1
   x=true
   while x
   x=false
    0.upto((array.length)-2).each do |i|
    if array[i] > array[i+1]
       array[i],array[i+1] = array[i+1],array[i]
       x=true
    end
 end
 end
 return array
end
array=[2,5,1,9,8,4]
sorting(array)