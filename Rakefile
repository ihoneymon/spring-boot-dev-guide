namespace :book do
  desc 'prepare build'
  task :prebuild do
    Dir.mkdir 'images' unless Dir.exists? 'images'
    Dir.glob("book/*/images/*").each do |image|
      FileUtils.copy(image, "images/" + File.basename(image))
    end
  end

  desc 'build basic book formats'
  task :build => :prebuild do
    puts "Converting to HTML..."
    `bundle exec asciidoctor spring-boot-dev-guide.asc`
    puts " -- HTML output at spring-boot-dev-guide.html"

    puts "Converting to EPub..."
    `bundle exec asciidoctor-epub3 spring-boot-dev-guide.asc`
    puts " -- Epub output at spring-boot-dev-guide.epub"

    puts "Converting to Mobi (kf8)..."
    `bundle exec asciidoctor-epub3 -a ebook-format=kf8 spring-boot-dev-guide.asc`
    puts " -- Mobi output at spring-boot-dev-guide.mobi"

    puts "Converting to PDF... (this one takes a while)"
    `bundle exec asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -a pdf-style=KaiGenGothicKR spring-boot-dev-guide.asc 2>/dev/null`
    puts " -- PDF  output at spring-boot-dev-guide.pdf"
  end
end

task :default => "book:build"
