VERSION = 'v0.4.0'

class Dtdiff < Formula
  desc "calculate date time diff"
  version "#{VERSION}"
  homepage "https://github.com/tkrtmy/dtdiff"
  head "https://github.com/tkrtmy/dtdiff.git"
  license "MIT"

  url "https://github.com/tkrtmy/dtdiff/releases/download/v0.4.0/dtdiff_darwin_amd64.tar.gz"
  sha256 "5e8ecd24de576faf15065b32a14d58b6e1572e2195601713f4e39beaeef2530a"

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
