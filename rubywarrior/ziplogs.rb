require 'zip'

def createFileName()
    ## Get student data
    fileObj = File.open('admin/studentdata', "r")
    while (line = fileObj.gets)
        student = eval(line)
    end
    fileObj.close
    time = Time.new
    
    zipfile_name = Dir.pwd + '/admin/zlogs/' + student['id'] + "-" + time.inspect + '.zip'
    return zipfile_name
end

def zipFile(zipfile_name)
    directory = Dir.pwd + '/admin/logs/'
    zipfile_name = createFileName()
    Zip::ZipFile.open(zipfile_name, Zip::ZipFile::CREATE) do |zipfile|
        Dir[File.join(directory, '*')].each do |file|
            zipfile.add(file.sub(directory, ''), file)
        end
    end
end

zipfile_name = createFileName()
zipFile(zipfile_name)