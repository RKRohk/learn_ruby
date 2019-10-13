#write your code here
def translate(arg="eat pie")
    vowels = /[aeiou]/
    phoneme = /qu/
    is_phoneme = false
    word_array = arg.split()
    result = []
    word_array.each { |words|
        if words.match(phoneme)
            is_phoneme = true
        end
        words = words.split("")
        until (words[0].match(vowels))
            words.push(words.shift())
        end
        if is_phoneme == true
            words.push(words.shift())
        end
        words.push('ay')
        new_string = words.join("")
        result.push(new_string)
        is_phoneme= false
    }
    result = result.join(" ")
    result
end
