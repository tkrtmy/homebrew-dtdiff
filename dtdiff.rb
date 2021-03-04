VERSION = 'v0.4.1'

class Dtdiff < Formula
  desc "calculate date time diff"
  version "#{VERSION}"
  homepage "https://github.com/tkrtmy/dtdiff"
  head "https://github.com/tkrtmy/dtdiff.git"
  license "MIT"

  url "https://github.com/tkrtmy/dtdiff/releases/download/#{VERSION}/dtdiff_darwin_amd64.tar.gz"
  sha256 "615ceb62767d5362090865b3efce175c8102658647c5155c53b0de104197a3ce"

  def install
    bin.install "dtdiff"
  end

  def caveats
    msg = <<-'EOF'
       _ _      _ _  __  __
    __| | |_ __| (_)/ _|/ _|
   / _` | __/ _` | | |_| |_
  | (_| | || (_| | |  _|  _|
   \__,_|\__\__,_|_|_| |_|
EOF
  end
end
