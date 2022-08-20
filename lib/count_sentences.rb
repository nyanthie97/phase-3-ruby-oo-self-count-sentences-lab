require 'pry'

class String

  def sentence?

    end_with?('.')
  end

  def question?

    end_with?('?')
  end

  def exclamation?

    end_with?('!')
  end

  def count_sentences

    sentences = 0
    punctuation = %w[. ? !]
    self
      .chars
      .each
      .with_index do |char, index|
        if punctuation.include?(char) && !punctuation.include?(self[index + 1])
          sentences += 1
        end
      end
    sentences
  end
end 