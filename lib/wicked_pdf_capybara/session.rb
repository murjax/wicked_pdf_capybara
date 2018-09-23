module WickedPdfCapybara
  module Capybara
    class Session
      def pdf_text
        temp_pdf = Tempfile.new('pdf')
        temp_pdf << source.force_encoding('UTF-8')
        reader = PDF::Reader.new(temp_pdf)
        pdf_text = reader.pages.map(&:text).first
        pdf_text.gsub("\n", ' ').gsub("\t", ' ')
      end
    end
  end
end
