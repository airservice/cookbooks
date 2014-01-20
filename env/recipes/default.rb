node[:deploy].each do |application, deploy|
  deploy = node[:deploy][application]

  execute "output test file" do
    cwd deploy[:current_path]
    command 'echo 123 > test.file'
    action :nothing
  end
end
