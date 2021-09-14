
class Vaultssh < Formula
  desc "Small cli wrapper for authenticating with ssh keys from hashicorp vault"
  homepage "https://github.com/jmgilman/vaultssh"
  version "0.1.0"
  license "MIT"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/jmgilman/vaultssh/releases/download/v0.1.0/x86_64-apple-darwin.tar.gz"
    sha256 "66774b60d673fa91c9d8fd72497206f480ab517b7b3e3b72fd83bd4c368d261b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/jmgilman/vaultssh/releases/download/v0.1.0/x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69b3b688513822f2f1210c9b8ecc98a0905e8a4a8a4cc27c4995daa1595a8a05"
    end
  end

  def install
    bin.install "vssh"
  end
end
