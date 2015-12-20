module Gfmarkdown
  USAGE =<<USAGE
Usage: gfmarkdown [options] file
      --mode=markdown|gfm
                      The rendering mode. markdown or gfm. default markdwon.
      --context=repository
                      he repository context. Only taken into account when rendering as gfm
      --url=url       domain (or through https://yourdomain.com/api/v3/markdown for enterprise)
      --token=token   OAuth2 Token
      --version       print the version
      --help          show this message, -h for short message
USAGE
end
