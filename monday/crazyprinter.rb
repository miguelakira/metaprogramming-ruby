#!/usr/bin/env ruby

#little fun with stupid monkeypatch =P

class String
    def crazyprint
        puts `clear`        
        
        self.split('').each {|c| printf(c); sleep(0.1);}
        puts ''
    end
end

str = ARGV.shift

if str.nil?
    puts 'Quote something after the name of the app: ruby crazyprinter.rb "This is something in quotes."'
else
    str.crazyprint
end
