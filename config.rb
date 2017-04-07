# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# Methods defined in the helpers block are available in templates

# Nifty little helper from this gist:
# https://gist.github.com/tiberiucorbu/67df6c13d61c0fb3a34a
helpers do
  # Initialize a redcarpet XHTML renderer and renders the input text
  def markdown(text)
    renderer = Redcarpet::Render::XHTML.new
    markdown = Redcarpet::Markdown.new(renderer)
    return markdown.render(text)
  end
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

configure :build do
  activate :minify_css
  activate :minify_javascript
end

# Livereload
# 

activate :livereload
