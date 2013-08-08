require 'cleverbot'
require 'mactts'


 
client = Cleverbot::Client.new
sentences = ['Hi.']
name = 'Joe: '
 
sentences.each do |n|
  sentences << client.write(n).to_s
  if name == 'Joe: '
    print name
    p n
    Mac::TTS.say(n, :vicki)

    name = 'Sally: '
  else
    print 'Sally: '
    p n
    Mac::TTS.say(n, :fred)
    name = 'Joe: '
  end


end