# ======問題文=======
#       □1□□□□□
#      x □□□□□□
#      --------
#       2□3□□□□
#     □□□□□□□□
#    □□4□5□6□
#    □□□□□□□
#   □□□□7□8
# □□□□□□□□
# -------------
# □□□□□□□9□□□□□
# ==================

def question
  data = []

  data << '76'
  data << '*1*****'
  data << '*' * 6
  data << '2*3***'
  data << '*' * 8
  data << '**4*5*6*'
  data << '*' * 7
  data << '****7*8'
  data << '*' * 8
  data << "#{'*' * 7}9#{'*' * 5}"
end

def valid?(value, str)
  str_value = value.to_s

  return false if str_value.size != str.size

  str_value.size.times do |i|

    next if str[i] == '*'

    return false if str_value[i] != str[i]

  end

  true
end
