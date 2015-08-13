class Segment

  attr_accessor :key, :translation, :language

  def initialize(key, translation, language)
    @key = key
    case translation
      when String
        @translation = translation.replace_escaped
      when Fixnum
        @translation = translation.to_s
      else begin
        @translation = ''
        puts 'Cannot convert to string translation for key: ' + key + ' value: ' + translation.to_s
      end
    end
    @language = language
  end

  def is_comment?
    @key == nil
  end
end