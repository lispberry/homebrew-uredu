class Uredu < Formula
  desc "Claim-gated workflows for coding agents: done means proven"
  homepage "https://github.com/lispberry/uredu"
  version "0.0.2"

  on_macos do
    on_arm do
      url "https://github.com/lispberry/uredu/releases/download/v0.0.2/uredu-darwin-arm64.tar.gz"
      sha256 "4a06b542c90ae5745083a6f0bc1e3486168ba415c995a8314a7a638427853937"
    end
    on_intel do
      url "https://github.com/lispberry/uredu/releases/download/v0.0.2/uredu-darwin-x64.tar.gz"
      sha256 "aa7542c93ee750bd28de9c232171d18d8eb8ec43184aed6ab546ad1130bb55e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lispberry/uredu/releases/download/v0.0.2/uredu-linux-arm64.tar.gz"
      sha256 "aa4b0a082441a367cc6b5ad9ccc37874054086439b6f08f2e04345b05a075001"
    end
    on_intel do
      url "https://github.com/lispberry/uredu/releases/download/v0.0.2/uredu-linux-x64.tar.gz"
      sha256 "8a507d763b6250a0a1448b47012694e0a9cfddc3db525b59944804f5ae233262"
    end
  end

  def install
    bin.install "uredu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/uredu --version")
  end
end
