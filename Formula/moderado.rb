class Moderado < Formula
  desc "Free-first AI coding agent"
  homepage "https://github.com/marcuz-apl/moderado"
  version "0.3.10"
  if OS.mac?
    url "https://github.com/marcuz-apl/moderado/releases/download/v0.3.10/moderado-macos-arm64"
    sha256 "d6fbdcb748eb01e40e3d93ab96dd282ba73bf2a748d7088c04a5e13171f87054"
  else
    url "https://github.com/marcuz-apl/moderado/releases/download/v0.3.10/moderado-linux-x64"
    sha256 "b017f640f21939e766d0386c3f0e2bde55237b441aecbc28ebe0d606d40d7689"
  end
  def install
    if OS.mac?
      bin.install "moderado-macos-arm64" => "moderado"
    else
      bin.install "moderado-linux-x64" => "moderado"
    end
  end
end
