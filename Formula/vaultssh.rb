
class Vaultssh < Formula
  desc "Small cli wrapper for authenticating with ssh keys from hashicorp vault"
  homepage "https://github.com/jmgilman/vaultssh"
  version "0.1.1"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jmgilman/vaultssh/releases/download/v0.1.1/x86_64-apple-darwin.tar.gz"
    sha256 "8d5aa49457a80b5961a982d2542c3254c1d98f758e4c99ad2d78e724c0b3d5f8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jmgilman/vaultssh/releases/download/v0.1.1/x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8cb508e25ed8f68799b3515d1ed8450339a970b0785f36f63f7fa487dc037996"
    end
  end

  def install
    bin.install "vssh"
  end
end
