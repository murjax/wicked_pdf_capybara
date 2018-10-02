# Wicked PDF Capybara

Wicked PDF Capybara is an extension on the Capybara testing library for PDFs. This gem parses the text content of a document generated with WickedPDF to allow testing of content. 

## Install

Add to the Gemfile of your project. Capybara must be included for this to work.

```ruby
gem 'capybara'
gem 'wicked_pdf_capybara'
```

## Usage

In an integration test, visit your pdf page and call `pdf_text` on your `page` to get the entire text from the document. 
```ruby
expect(page.pdf_text).to include('Success')
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
