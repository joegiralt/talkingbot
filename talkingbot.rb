require 'cleverbot'
require 'mactts'


 
client = Cleverbot::Client.new
sentences = ['Do you believe in God?']
name = 'Joe: '
 
sentences.each do |n|
  sentences << client.write(n).to_s
  if name == 'Joe: '
    print name
    p n
    Mac::TTS.say(n, :fred)

    name = 'Sally: '
  else
    print 'Sally: '
    p n
    Mac::TTS.say(n, :vicki)
    name = 'Joe: '
  end


end