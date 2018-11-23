require 'fileutils'
time = Time.now.strftime("%Y%m%d%H%M%S")
FileUtils.cp_r("/home/ruuke/techinform-tasks/hw_1.7/array.rb", "/home/ruuke/techinform-tasks/hw_1.7/#{time}array.rb")