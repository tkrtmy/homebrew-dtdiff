VERSION = 'v0.3.0'

class Dtdiff < Formula
  desc "calculate date time diff"
  version "#{VERSION}"
  homepage "https://github.com/tkrtmy/dtdiff"
  head "https://github.com/tkrtmy/dtdiff.git"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tkrtmy/dtdiff/releases/download/#{VERSION}/dtdiff_darwin_amd64"
    sha256 "0a8f9dd4bba52ddf1643bb33e4ca29a6806528fc7bfc97e720d7d1d89b78162c"
  else
    url "https://github.com/tkrtmy/dtdiff/releases/download/#{VERSION}/dtdiff_darwin_386"
    sha256 "e83c61317dfca92d6f7bf962940592ccba7f6ba60083dbfa77da0601982f9293"
  end

  def install
    if Hardware::CPU.is_64_bit?
      bin.install "dtdiff_darwin_amd64" => "dtdiff"
    else
      bin.install "dtdiff_darwin_386" => "dtdiff"
    end
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
