class Book
    attr_accessor :title
    def title=(title)
        @title = title
        capitalize()
    end
    def capitalize()
        title_array = @title.split()
        not_to_capitalize = ['the','a','an','and','of','in','but',]
        title_array[0] = title_array[0].capitalize
        title_array.each_with_index do |word,idx|
            if ! not_to_capitalize.include? word
                title_array[idx] = word.capitalize
            end
        end
        @title = title_array.join(" ")
    end
# write your code here
end
