class Post
  def initialize
      @crated_at = Time.now
      @text = nil
  end

  def read_from_console
      #todo
  end

  def to_strings 
      #todo
  end

  def save
      file = File.new(file_path, "w:UTF-8")

      for item in to_strings do 
          file.puts(item)
      end
      file.close
  end

  def file_path 
      current_path = File.dirname(__FILE__)

      file_name = @created_at.strftime("#{self.class.name}_%y-%m-%d_%h-%m-%s")

      return current_path + "/" + file_name

  end


end
