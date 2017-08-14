def recover_secret(triplets)
  str = triplets[0].join("")
  triplet_0 = triplets[0]
  triplets.each do |triplet|
    triplet_0.each do |letter|
      if triplet.include?(letter)
        if triplet.index(letter) == 0
          if str.include?(triplet[1]) && str.include?(triplet[2])
            if str.index(triplet[1]) > str.index(triplet[2])
              str[str.index(triplet[1])], str[str.index(triplet[2])] = str[str.index(triplet[2])], str[str.index(triplet[1])]
            else
              str << triplet[1] unless str.include?(triplet[1])
              str << triplet[2] unless str.include?(triplet[2])
            end
          end
        elsif triplet.index(letter) == 1
          if str.include?(triplet[0]) && str.include?(triplet[2])
            if str.index(triplet[0]) > str.index(triplet[2])
                str[str.index(triplet[0])], str[str.index(triplet[2])] = str[str.index(triplet[2])], str[str.index(triplet[0])]
            else
              str.prepend(triplet[0]) unless str.include?(triplet[0])
              str << triplet[2] unless str.include?(triplet[2])
            end
          end
        else
          if str.include?(triplet[1]) && str.include?(triplet[2])
            if str.index(triplet[1]) > str.index(triplet[2])
              str[str.index(triplet[0])], str[str.index(triplet[2])] = str[str.index(triplet[2])], str[str.index(triplet[0])]
            else
              str.prepend(triplet[0]) unless str.include?(triplet[0])
              str.prepend(triplet[1]) unless str.include?(triplet[1])
            end
          end
        end
      end
    end
    triplet_0 = triplet
  end
  p str
end
    # p str.join("")



#   end
# end
# tr = triplets.join("").split(//).uniq
#     triplets.each do |triplet|
#       str.each_cons(2) do |a,b|
#          if triplet.include?(a) && triplet.include?(b)
#           if triplet.index(a) > triplet.index(b)
#             p "1"
#             # str[str.index(a), str.index(a)+1].map!{ |x| str[str.index(x)], str[str.index(x)+1] = str[str.index(x)], str[str.index(x)+1]}
#             # p str
#           end
#         end
#       end
#     end

triplets_1 = [
  ['t','u','p'],
  ['w','h','i'],
  ['t','s','u'],
  ['a','t','s'],
  ['h','a','p'],
  ['t','i','s'],
  ['w','h','s']
]

puts recover_secret(triplets_1)
