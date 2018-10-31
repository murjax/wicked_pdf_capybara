require 'spec_helper'
require 'wicked_pdf_capybara/session'
RSpec.describe WickedPdfCapybara do
  it 'has a version number' do
    expect(WickedPdfCapybara::VERSION).not_to be_nil
  end

  describe 'Capybara::Session#pdf_text' do
    subject { Capybara::Session.new.pdf_text }
    before(:each) do
      expect_any_instance_of(Capybara::Session).to receive_message_chain(:source, :force_encoding).and_return(source)
    end
    context 'can be parsed by pdf reader' do
      let(:source) { File.read('spec/encoded_pdf.txt') }
      it 'returns text stripped of newlines, tabs, and extra whitespace' do
        expect(subject).to eq("Document 01 Just pretend you are a whisper floating across a mountain. Don't fiddle with it all day. Get tough with it, get strong.")
      end
    end

    context 'cannot be parsed by pdf reader' do
      let(:source) { 'foobar' }
      it do
        expect(subject).to be_nil
      end
    end
  end
end
