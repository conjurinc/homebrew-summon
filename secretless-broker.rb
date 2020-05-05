# This file was generated by GoReleaser. DO NOT EDIT.
class SecretlessBroker < Formula
  desc "Secures your apps by making them Secretless"
  homepage "https://secretless.io"
  version "1.6.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cyberark/secretless-broker/releases/download/v1.6.0/secretless-broker_1.6.0_darwin_amd64.tar.gz"
    sha256 "6757e4fcb249bb680a1a2f45f13404fcf7ed710aad1858bf0efc622fc346407f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cyberark/secretless-broker/releases/download/v1.6.0/secretless-broker_1.6.0_linux_amd64.tar.gz"
      sha256 "71f38755054454c23ae37c3c800388c5d3751f9d706a481f7b0dab14a7222999"
    end
  end

  def install
    bin.install "secretless-broker"
  end

  test do
    system "#{bin}/secretless-broker", "-version"
  end
end
