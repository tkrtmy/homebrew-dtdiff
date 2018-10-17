VERSION = 'v0.0.1'

class Dtdiff < Formula
  desc "calculate date time diff"
  version "#{VERSION}"
  homepage "https://github.com/tkrtmy/dtdiff"
  head "https://github.com/tkrtmy/dtdiff.git"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tkrtmy/dtdiff/releases/download/#{VERSION}/dtdiff_darwin_amd64"
    sha256 "711517da9d85d601a674bcdc466eebc3db5958738acf049a68cdc8c812fadf29"
  else
    url "https://github.com/tkrtmy/dtdiff/releases/download/#{VERSION}/dtdiff_darwin_386"
    sha256 "01bf28077e4b7dd3f3cded017a25b35dd3df0a4035a88f7bbb8bdda302c8877e"
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
