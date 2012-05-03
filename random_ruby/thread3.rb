def readfiles(files)
    arr=[]
    threads=files.map do |f|
        Thread.new{File.read(f)}
    end
    threads.map{|t| arr<<t.value}
end
readfiles(Dir['*.rb'])
