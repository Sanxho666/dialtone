# Written by Aaron Shekey
# Originally used on Stacks (https://stackoverflow.design)

require 'nokogiri'

module Jekyll
  class RenderIconTag < Liquid::Tag
    include Jekyll::LiquidExtensions

    Variable = /\{\{\s*([\w]+\.?[\w]*)\s*\}\}/i

    def initialize(tag_name, markup, tokens)
      super
      @markup = markup.split("|")

      @icon = @markup[0].to_s.strip

      secondParameter = @markup[1].to_s.strip

      # Check if the second parameter looks like an integer
      # If it does, we'll use the second parameter as the dimension
      # If it doesn't, we'll use the second paramater as class names
      if secondParameter.to_i.to_s == secondParameter
        @dimension = @markup[1]
        @class = nil
      else
        @class = @markup[1]
        @dimension = @markup[2]
      end
    end

    def interpolate(markup, context)
      markup.scan Variable do |variable|
        markup = markup.gsub(Variable, lookup_variable(context, variable.first))
      end
      markup
    end

    def render(context)
      if @icon.match(Variable)
        processedIcon = interpolate(@icon, context)
      else
        processedIcon = @icon
      end

      filePath = "_includes/svg-icons/#{processedIcon}.svg"
      file = File.open(filePath, "r").read

      # Do we have a class parameter?
      if @class.to_s.strip.empty? && @dimension.to_s.strip.empty?
        return file
      else
        classList = "svg-icon icon#{processedIcon} #{@class}"
        classList = classList.strip!
        classEdit = Nokogiri::HTML::DocumentFragment.parse(file)

        # Do we have a dimension?
        if @dimension.to_s.strip.empty?
          classEdit.css("svg").each do |shape|
            shape.attributes["class"].value = classList
          end
        else
          @dimension = @dimension.strip!
          classEdit.css("svg").each do |shape|
            shape.attributes["class"].value = classList
            shape.attributes["width"].value = @dimension
            shape.attributes["height"].value = @dimension
          end
        end
        return classEdit
      end
    end
  end
end

Liquid::Template.register_tag('icon', Jekyll::RenderIconTag)
