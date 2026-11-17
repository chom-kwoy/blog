# Blog

## Sitemap

`jekyll-sitemap` generates `/sitemap.xml` and `/robots.txt` on each build.
The production domain is configured in `_config.yml` and matches `CNAME`.

Build locally with production URLs:

```sh
JEKYLL_ENV=production bundle exec jekyll build
```

After deployment, submit `https://blog.xn--gt1b.xyz/sitemap.xml` in Google Search
Console's Sitemaps report for this site. The sitemap updates automatically when
posts or pages change. Redirect pages and unpublished posts are excluded.
