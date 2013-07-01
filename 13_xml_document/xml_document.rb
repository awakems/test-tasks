class XmlDocument
   
  def method_missing (mName, *args, &block)
    "<#{mName}/>"
  end

end
