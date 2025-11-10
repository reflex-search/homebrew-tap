class Reflex < Formula
  desc "Local-first, structure-aware code search engine for AI agents"
  homepage "https://github.com/reflex-search/reflex"
  version "0.5.2"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/reflex-search/reflex/releases/download/v0.4.1/reflex-search-aarch64-apple-darwin.tar.xz"
    sha256 "30285dbbd6db8d73fd238582bbf18f4cf99e3576463e6085e05a86b36c6f6329"
  elsif Hardware::CPU.intel?
    url "https://github.com/reflex-search/reflex/releases/download/v0.5.2/reflex-search-x86_64-apple-darwin.tar.xz"
    sha256 "8b8fd35fff75dcc584150b48c1ea03309bb74df05d9978bd4bbe4765fe04566d"
  end

  def install
    bin.install "rfx"
  end

  test do
    system "#{bin}/rfx", "--version"
  end
end
