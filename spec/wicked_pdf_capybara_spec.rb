RSpec.describe WickedPdfCapybara do
  it 'has a version number' do
    expect(WickedPdfCapybara::VERSION).not_to be_nil
  end

  describe 'Capybara::Session#pdf_text' do
    context 'can be parsed by pdf reader' do
      it 'returns text stripped of newlines and tabs' do

      end
    end

    context 'cannot be parsed by pdf reader' do
      it { expect(subject).to be_nil }
    end
  end
end
