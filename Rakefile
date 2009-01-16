require 'rake/clean'

EMACS_CMD='/Applications/Emacs.app/Contents/MacOS/Emacs'

EL_FILES = FileList['init/*.el', 'local/**/*.el', 'vendor/**/*.el']
ELC_FILES = EL_FILES.ext('.elc')

CLOBBER.include(ELC_FILES)
CLOBBER.include('html')

task :elc => ELC_FILES

rule ".elc" => ".el" do |t|
  sh "#{EMACS_CMD} --batch -f batch-byte-compile #{t.source}" do |ok, status|
    puts "Compile failed: #{status}" unless ok
  end    
end

task :default => :elc

namespace :cheat_sheet do
  task :html do
    cc = CheatConverter.new('Emacs Cheat Sheet', File.read('emacs_cheat_sheet.markdown'))
    File.open('emacs_cheat_sheet.html', 'w') do |file|
      file.puts cc.to_html
    end
  end

  task :pdf => :html do
    exec "prince emacs_cheat_sheet.html && open emacs_cheat_sheet.pdf"
  end
end

class CheatConverter
  def initialize(title, text)
    @title = title
    @text = text
    @in_table = false
  end

  def to_html
    html = <<EOF
<html>
<head>
<title>#{@title}</title>
<style type="text/css">
  @page {
    size: letter landscape;
    margin: 0.75in;
  }

  @font-face {
    font-family: sans-serif;
    src: local("Droid Sans")
  }

  body {
    font-family: sans-serif;
    font-size: 80%;
  }

  h1 {
    width: 100%;
  }

  h2 {
    font-size: 120%;
  }

  h3 {
    font-size: 100%;
  }

  #main {
    columns: 3;
  }

  table {
    width: 100%;
  }

  td {
    border-bottom: 1px solid gray;
  }

  td {
    text-align: right;
  }

  tr > :first-child {
    font-family: monospace;
    text-align: left;
  }
</style>
</head>
<body>
<h1>#{@title}</h1>
<div id="main">
EOF

    @text.each_line do |line|
      html << if line =~ /^###/
                "<h3>#{line.gsub(/#/, '').strip}</h3>"
              elsif line =~ /^##/
                "<h2>#{line.gsub(/#/, '').strip}</h2>"
              elsif line =~ /^\s*$/
                @in_table = !@in_table
                if @in_table
                  "<table>"
                else
                  "</table>"
                end
              else
                %[<tr>#{line.strip.split(/\s\s+/).map { |cell| "<td>#{cell}</td>" }.join('')}<\/tr>]
              end
    end
    html << "<\/table>" unless html =~ /<\/table>$/
    html << "</div></body></html>"
    html
  end
end 



