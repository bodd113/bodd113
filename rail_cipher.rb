#for 3-to generalise

def encode_rail_fence_cipher(str, num_rails)
  enc_str = ""
  for i in (0..num_rails-1)
    if i==0 || i == num_rails-1
      (i...str.length).step(num_rails+1).each{|x| enc_str << str[x]}
    else
      (i...str.length).step(num_rails-1).each{|x| enc_str << str[x]}
    end
  end
  return enc_str
end


def decode_rail_fence_cipher(str, num_rails)
  dec_arr = []
  str_arr = str.split("")
  j = 0
  f = 0
  while j < str.length;
      i = f
      until i >= str.length
        dec_arr[i] = str_arr.shift
        if f === 0 || f === num_rails-1
          i += num_rails+(num_rails-2)
        else
          i += num_rails - 1
        end
        j += 1
      end
      f += 1
  end
  return dec_arr.join("")
end


# puts encode_rail_fence_cipher('WEAREDISCOVEREDFLEEATONCE', 3)
puts decode_rail_fence_cipher('WECRLTEERDSOEEFEAOCAIVDEN', 3)

# 'WECRLTEERDSOEEFEAOCAIVDEN'
# 'WEAREDISCOVEREDFLEEATONCE'
