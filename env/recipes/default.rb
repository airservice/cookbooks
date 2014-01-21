node[:deploy].each do |application, deploy|
  deploy = node[:deploy][application]

  puts "DEPLOYING TO #{deploy[:current_path]}"
  execute "output test file" do
    cwd deploy[:current_path]
    command 'echo 123 > test.file'
    action :nothing
  end
end
