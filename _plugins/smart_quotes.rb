# frozen_string_literal: true

require "kramdown"
require "kramdown/parser/kramdown"

module WhitespaceSmartQuotes
  QUOTES = {
    "'" => [:lsquo, :rsquo],
    '"' => [:ldquo, :rdquo],
  }.freeze

  def initialize(source, options)
    super
    @span_parsers.map! do |parser|
      parser == :smart_quotes ? :whitespace_smart_quotes : parser
    end
  end

  def parse_whitespace_smart_quotes
    location = @src.current_line_number
    quote = @src.getch
    preceding_text = @src.pre_match
    opening = preceding_text.empty? || preceding_text.match?(/[[:space:]]\z/)
    value = QUOTES.fetch(quote)[opening ? 0 : 1]

    @tree.children << ::Kramdown::Element.new(:smart_quote, value, nil, location: location)
  end
end

# Match one quote at a time so adjacent quotes each follow the same rule.
quote_pattern = /["']/
Kramdown::Parser::Kramdown.define_parser(
  :whitespace_smart_quotes, quote_pattern, quote_pattern.source
)
Kramdown::Parser::Kramdown.prepend(WhitespaceSmartQuotes)
