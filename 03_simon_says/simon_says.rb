#write your code here
def echo(word)
    word
end
def shout(words)
    words.upcase
end
def repeat(words = "meh ",repeat = 2)
    return_string = words
    repeat = repeat -1
    repeat.times do
        return_string = return_string + " " + words 
    end
    return_string
end
def start_of_word(str,limit)
    limit = limit -1 
    str[0..limit]
end

def first_word(str)
    word = str.split(' ')
    word.first
end
def titleize(words)
    collection = words.split(' ')
    smallwords = ['an','on','over','in','the','and']
    collection.size.times do |i|
        if(i == 0 || !smallwords.include?(collection[i]))
            collection[i] = collection[i].capitalize
        end
    end
    words = collection.join(" ")
    words
end
titleize("jaws")