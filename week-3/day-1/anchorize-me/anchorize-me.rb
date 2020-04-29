def anchorize(text)
  my_match = text.match(/(?:\w*)\s(?<protocol>http|https|ftp|ftps|file|smb)(?<url>:\/\/\w*.*\w*)\s/i)
  "hello <a href=\"#{my_match[:protocol]}#{my_match[:url]}\">#{my_match[:protocol]}#{my_match[:url]}</a> !"
end

# test

puts anchorize('hello http://world.com !') #'hello <a href="http://world.com">http://world.com</a> !'