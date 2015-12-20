def __main__(argv)

  opts = Getopts.getopts("vh",
                         "version",
                         "help",
                         "url:",
                         "token:",
                         "mode:",
                         "context:",
                        ).map{|k,v| [k.to_sym, v == "" ? nil : v ] }.to_h

  raise ArgumentError, "\n\n#{Gfmarkdown::USAGE}" if opts.has_key?(:"?")

  if opts[:v] || opts[:version]
    puts "v#{Gfmarkdown::VERSION}"
    exit
  end

  if opts[:h] || opts[:help] || ARGV.size == 1
    puts "\n#{Gfmarkdown::USAGE}\n"
    exit
  end
  puts GFMarkdown.new(opts).render(File.open(ARGV[-1]).read)
end
