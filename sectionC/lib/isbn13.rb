class IsbnChecker

    $multiplier10 = [10,9,8,7,6,5,4,3,2,1]
    $multiplier13 = [1,3,1,3,1,3,1,3,1,3,1,3,1]
    
    
    def isbn13(inputStr)
    
        clean  = inputStr.gsub(/\s+/, "")
        len = clean.length()
        newStr = []
        status = ""
    
       
        #checking for valid input 
        if numeric?(clean)
            if len == 10 || len == 13
                clean = clean.split("")
                i = 0
                if len == 10
                    while i < len
                        newStr[i] = clean[i].to_i * $multiplier10[i]
                        i += 1
                    end 
    
                    if newStr.sum%11 == 0 
                        status = to_isbn13(clean)
                    else 
                        status = "Invalid"
                    end
                elsif len == 13
                    while i < len 
                        newStr[i] = clean[i].to_i * $multiplier13[i]
                        i += 1
                    end
    
                    if newStr.sum%10 == 0 
                        status = "Valid"
                    else 
                        status = "Invalid"
                    end
                end
            else 
                status = "Invalid"
            end
        else 
            status = "Invalid"
        end
        return status
    end 
    
    def numeric?(str)
        Float(str) != nil rescue false
    end
    
    
    def to_isbn13(arr)
        newStr = []
        newIsbn = [9,7,8]
        i = 0
        j = 0
        while i < arr.length - 1
            newIsbn.append(arr[i])
            i += 1
        end
    
        while j < newIsbn.length
            newStr[j] = newIsbn[j].to_i * $multiplier13[j]
            j += 1
        end
    
        mod = newStr.sum%10
        if mod == 0
            newIsbn.append(mod)
        else
            newIsbn.append(10 - mod)
        end
    
        return newIsbn.join(' ')
    end

end

obj1 = IsbnChecker.new
obj2 = IsbnChecker.new
obj3 = IsbnChecker.new

puts obj1.isbn13("9780316066525")
puts obj1.isbn13("0330301824")
puts obj1.isbn13("0316066524")