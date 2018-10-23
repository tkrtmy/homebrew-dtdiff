VERSION = 'v0.2.0'

class Dtdiff < Formula
  desc "calculate date time diff"
  version "#{VERSION}"
  homepage "https://github.com/tkrtmy/dtdiff"
  head "https://github.com/tkrtmy/dtdiff.git"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/tkrtmy/dtdiff/releases/download/#{VERSION}/dtdiff_darwin_amd64"
    sha256 "94f0b24d1f6e825688bdbb8459f746ec14a2940bed4350eff27375043b26bb7a"
  else
    url "https://github.com/tkrtmy/dtdiff/releases/download/#{VERSION}/dtdiff_darwin_386"
    sha256 "af5b86df0ffbe58ee7d27f0f6756859aee941d368c942947f32cb68cae0035f6"
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
