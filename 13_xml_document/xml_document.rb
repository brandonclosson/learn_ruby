require 'pp'

class XmlDocument
  def initialize(bool = false)
    @indented = bool
    @indent_level = 0
  end

  def method_missing(name, options = {}, &block)
    tag = ""
    tag << ("  " * @indent_level) if @indented
    tag << "<#{name}"
    options.each { |k, v| tag.concat(" #{k}='#{v}'") }

    if block_given?
      @indent_level += 1
      tag << ">"
      tag << "\n" if @indented
      tag << yield
      @indent_level -= 1
      tag << "  " * @indent_level if @indented
      tag << "</#{name}>"
      tag << "\n" if @indented
    else
      tag << "/>"
      tag << "\n" if @indented
    end
    tag
  end
end

x = XmlDocument.new
pp x.tree {x.good}