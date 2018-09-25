require 'pdf-reader'
require 'tempfile'
module WickedPdfCapybara
  module Capybara
    class Session
      def pdf_text
        begin
          parsed_pdf_text
        rescue ArgumentError, PDF::Reader::MalformedPDFError
        end
      end

      private

      def temp_pdf
        temp_pdf = Tempfile.new('pdf')
        temp_pdf << source.force_encoding('UTF-8')
      end

      def pdf_reader
        PDF::Reader.new(temp_pdf)
      end

      def parsed_pdf_text
        pdf_reader.pages.map(&:text).first.gsub("\n", ' ').gsub("\t", ' ')
      end
    end
  end
end
