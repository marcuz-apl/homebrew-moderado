class Moderado < Formula
  desc "Free-first AI coding agent"
  homepage "https://github.com/marcuz-apl/moderado"
  version "0.3.0"
  if OS.mac?
    url "https://github.com/marcuz-apl/moderado/releases/download/v0.3.0/moderado-macos-arm64"
    sha256 "8b1b2c7db590ec199c874e79479af8fa5788c0c46b5390f1d8b68db9797452b1"
  else
    url "https://github.com/marcuz-apl/moderado/releases/download/v0.3.0/moderado-linux-x64"
    sha256 "1efce9e801e35ebc2fd100fce22e2647cab22a41033b78faf6cdbd8a50b0559a"
  end
  def install
    if OS.mac?
      bin.install "moderado-macos-arm64" => "moderado"
    else
      bin.install "moderado-linux-x64" => "moderado"
    end
  end
end
