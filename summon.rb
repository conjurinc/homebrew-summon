# This file was generated by GoReleaser. DO NOT EDIT.
class Summon < Formula
  desc "CLI that provides on-demand secrets access for common DevOps tools."
  homepage "https://github.com/cyberark/summon"
  version "0.8.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cyberark/summon/releases/download/v0.8.3/summon-darwin-amd64.tar.gz"
    sha256 "6c6e06970ba1f38dbdbe1169b355f796f11cd3b06e53584fab93b264d5e02201"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cyberark/summon/releases/download/v0.8.3/summon-linux-amd64.tar.gz"
      sha256 "fc0e0feaf6ef4fb641a41762a2c76d1a282fec3f852e1141af6e3f8ab24f074f"
    end
  end

  def install
    bin.install "summon"
  end

  test do
    system "#{bin}/summon", "-v"
  end
end
