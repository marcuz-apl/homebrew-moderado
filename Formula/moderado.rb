class Moderado < Formula
  desc "Free-first AI coding agent"
  homepage "https://github.com/marcuz-apl/moderado"
  version "0.3.9"
  if OS.mac?
    url "https://github.com/marcuz-apl/moderado/releases/download/v0.3.9/moderado-macos-arm64"
    sha256 "b5d7362d7e4ea082ae1b0ae6434cb35b56554de8b6d3687d7c64f42dba7b9d36"
  else
    url "https://github.com/marcuz-apl/moderado/releases/download/v0.3.9/moderado-linux-x64"
    sha256 "ee0d1a5bdaa5bd8ee4508e4728776bcd0150598e7c89016eea5dc33c656c575d"
  end
  def install
    if OS.mac?
      bin.install "moderado-macos-arm64" => "moderado"
    else
      bin.install "moderado-linux-x64" => "moderado"
    end
  end
end
