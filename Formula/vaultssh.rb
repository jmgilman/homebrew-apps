
class Vaultssh < Formula
  desc "Small cli wrapper for authenticating with ssh keys from hashicorp vault"
  homepage "https://github.com/jmgilman/vaultssh"
  version "0.1.0"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jmgilman/vaultssh/releases/download/v0.1.0/x86_64-apple-darwin.tar.gz"
    sha256 "f9af5b6928c26a32e2671581c114126c35dc60b348c69cd63dd299fc79a09cc6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jmgilman/vaultssh/releases/download/v0.1.0/x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4776eea06a4b1f993838f7d82cdac44a92dc87a23d2a45f3dc8f3a1fd60afe9"
    end
  end

  def install
    bin.install "vssh"
  end
end
