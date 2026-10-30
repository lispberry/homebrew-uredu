class Proven < Formula
  desc "Proof-gated workflows for coding agents: done means proven"
  homepage "https://github.com/lispberry/proven"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/lispberry/proven/releases/download/v0.0.1/proven-darwin-arm64.tar.gz"
      sha256 "854e6f719550b5a7c84fdf4b88880f6396159fb3d3e2347316ac5a14c87a84fe"
    end
    on_intel do
      url "https://github.com/lispberry/proven/releases/download/v0.0.1/proven-darwin-x64.tar.gz"
      sha256 "283590188c7ac807a1eee84d522c524bf27f4fae01af3f8ce99d84cb838dbbdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lispberry/proven/releases/download/v0.0.1/proven-linux-arm64.tar.gz"
      sha256 "fd00843e6d9b5f88a735c9f61c3aa5c5871315fd96ca866c8ce92d783ee2a0cb"
    end
    on_intel do
      url "https://github.com/lispberry/proven/releases/download/v0.0.1/proven-linux-x64.tar.gz"
      sha256 "12490776a1b21c67441b145a63b517fe5808fb13fc3d6d3ff8f1dab5b83532f7"
    end
  end

  def install
    bin.install "proven"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/proven --version")
  end
end
