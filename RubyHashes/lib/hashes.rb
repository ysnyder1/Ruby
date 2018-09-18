# RubyHashes
# Part I
def array_2_hash emails, contacts
    if emails.length == 0
        return contacts
    else
        iterator = 0
        contacts.each do |key,value|
            contacts[key] = emails[iterator]
            iterator += 1
        end
        
        return contacts
    end                                                    #           |     #KEY          |                           #VALUE                    |  ,  |          #KEY     |                             #VALUE                      |
end
                                                                                
# Part II                                                  #input Hash{    :"Bob Smith"=>  {:email=>"bobsmith@example.com", :phone=>"555-555-5555"}  , :"Sally Field"=>  {:email=>"sallyfield@example.com", :phone=>"111-111-1111"}   }
def array2d_2_hash contact_info, contacts
    if contact_info[0].empty? || contacts.empty?
        return contacts
        
    else
        x = 0;
        contacts.each do |key, value|
            contacts[key] = {:email => contact_info[x][0], :phone => contact_info[x][1]}   #gives each contacts[key] a hash as value
            x+=1
        end
    end
    
    return contacts
end

# Part III                                  Want an [ ["email addresses"], ["phone numbers"], ["names"] ]    - >    [["bobsmith@example.com","sallyfield@example.com"],["555-555-5555","111-111-1111"],["Bob Smith","Sally Field"]]
def hash_2_array contacts
    # Extract like info from each hash into arrays
    stringArr = Array.new(3) {Array.new(2)}   #=> [ [ nil,nil]  , [ nil,nil]  , [nil,nil]  ]
    
    if contacts.empty?
        return nonsense = Array.new(3, Array.new)
    else
       n=0 #name counter
       e=0 #email counter
       p=0 #phone counter
        contacts.each do |key, value|
            stringArr[2][n] = key.to_s              #adds name to array
            n+=1
            value.each do |key2, value2|
                if key2.to_s.eql?("email")
                    stringArr[0][e] = value2.to_s   #adds email address to array
                    e+=1
                else
                    stringArr[1][p] = value2.to_s   #adds phone number to array
                    p+=1
                end
            end
        end
    end
    return stringArr
end
