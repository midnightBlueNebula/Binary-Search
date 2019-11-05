array_test = []

1000000.times do |e|
  array_test << e
end

limit = array_test.length
find_val = array_test[rand(limit)]

a = Time.new

#array_test.each do |e|
#  puts e if e == find_val
#end

def binary_search(arr,val,limit=arr.length,mid_inx=arr.length/2,mid_val=arr[mid_inx],loop=1)
  if val < mid_val
    limit = mid_inx
    mid_inx = (0 + limit) / 2
    mid_val = arr[mid_inx]
    loop += 1
    binary_search(arr,val,limit,mid_inx,mid_val,loop)
  elsif val > mid_val
    mid_inx = (mid_inx+1 + limit) / 2
    mid_val = arr[mid_inx]
    loop += 1 
    binary_search(arr,val,limit,mid_inx,mid_val,loop)
  elsif val != mid_val && limit < 2
    p "not found" 
  else
    p "Loop: #{loop}"
    p "Found #{val}"
  end
end

binary_search(array_test,find_val)


b = Time.new

p b-a
