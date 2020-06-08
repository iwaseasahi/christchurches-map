ActionDispatch::Routing::Mapper.prepend(Module.new do
  def draw(filename)
    path = Rails.root.join("config/routes/#{filename}.rb")
    instance_eval(File.read(path)) if File.exist?(path)
  end
end)
