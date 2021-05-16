# frozen_string_literal: true

require_relative "tbuck14_palindrome/version"

module Palindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include Palindrome
end

class Integer
  include Palindrome
end
