def setupStudentData()
    student = Hash["id" => '', "name" => '']
    
    puts 'What is your student ID?'
    student['id'] = gets.chomp
    puts 'What is your name?'
    student['name'] = gets.chomp
    fileObj = File.open('admin/studentdata', "w")
    fileObj.write(student)
    fileObj.close
    return student
end

## Get student data
fileName = 'admin/studentdata'
if File.zero?(fileName) then
    student = setupStudentData()
else
    fileObj = File.open('admin/studentdata', "r")
    while (line = fileObj.gets)
      student = eval(line)
    end
    fileObj.close
end

puts 'Hello, ' + student['name'] + '!'

time = Time.new
logCommand = "script -a -c rubywarrior admin/logs/ID" + student['id'] + "D" + time.inspect
puts "Are you ready to play the game? (Y/N)"
res = gets.chomp
if res == 'y' || res == 'Y' then 
    system logCommand
else
    puts "Goodbye"
end

