source "https://rubygems.org"

# Chirpy theme. Requires Jekyll 4 (pulled in as a gem dependency), so the
# old `github-pages` gem is intentionally not used here. The site is built
# with the plain jekyll/builder Docker image in CI, not GitHub's restricted
# Pages builder, so any theme/Jekyll version is fine.
gem "jekyll-theme-chirpy", "~> 7.2"

# Plugins not bundled with the theme. Gems in the :jekyll_plugins group are
# auto-loaded by Jekyll (no need to also list them under `plugins:` in config).
group :jekyll_plugins do
  # Generates redirect pages for old post URLs (see `redirect_from:` in posts
  # whose category — and therefore permalink — changed).
  gem "jekyll-redirect-from"
end

group :test do
  gem "html-proofer", "~> 5.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.2.0", :platforms => [:mingw, :x64_mingw, :mswin]

gem "webrick", "~> 1.8"
