VERSION = 'v0.1.0'

class Dtdiff < Formula
  desc "calculate date time diff"
  version "#{VERSION}"
  homepage "https://github.com/tkrtmy/dtdiff"
  head "https://github.com/tkrtmy/dtdiff.git"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tkrtmy/dtdiff/releases/download/#{VERSION}/dtdiff_darwin_amd64"
    sha256 "278fac00e92fc21afecee3916e24791dcb24f0194eb40ff9af9653ceb93d0e64"
  else
    url "https://github.com/tkrtmy/dtdiff/releases/download/#{VERSION}/dtdiff_darwin_386"
    sha256 "523c45a63980ba9d428781ebb46966c4b4df2f4faae8f83c7e5595907c03a5d5"
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
