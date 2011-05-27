#
# warning: somewhat scary/explicit!

# see subtitle_todo file










































profanities = {'hell' => 'heck', 'g' + 
'o' + 'd' => 'g..', 'lord' => 'lo..', 'da' + 
'mn' => 'da..', 'f' + 
 117.chr +
99.chr + 
 107.chr => 
'f...',
'bi' +
'tc' + 104.chr => 'b.....',
'bas' +
'tard' => 'ba.....',
('a' +
 's'*2) => 'a..',
'thor' => 'thor', 'odin' => 'odin',
'breast' => 'br....'
}.to_a

# sat...
profanities[:breast] = 'breast' if ARGV[0] == '--with-br'

profanities.map!{|profanity, sanitized| [Regexp.new(profanity, Regexp::IGNORECASE), sanitized]}

incoming = File.read(ARGV[0])

found_any = false

for glop in incoming.scan(/\d\d:\d\d:\d\d.*?^\d+$/m)

for profanity, sanitized in profanities
  # dunno if we should force words to just start with this or contain it anywhere...
  # what about 'g..ly' for example?
  # or 'un...ly' ?
  
  if glop =~ profanity
    found_any = true
    timing = glop.split("\n").first.strip
    timing =~ /(\d\d:\d\d:\d\d),(\d\d\d) --> (\d\d:\d\d:\d\d),(\d\d\d)/
    # "00:03:00.0" , "00:04:00.0", "violence", "of some sort",
    puts %!"#{$1}.#{$2}" , "#{$3}.#{$4}", "profanity", "#{sanitized}",! 
  end
  
end


end

p 'no profanity detected' unless found_any