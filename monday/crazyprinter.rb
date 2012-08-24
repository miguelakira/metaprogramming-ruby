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

str.crazyprint