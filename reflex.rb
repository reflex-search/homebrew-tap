class Reflex < Formula
  desc "Local-first, structure-aware code search engine for AI agents"
  homepage "https://github.com/reflex-search/reflex"
  version "0.4.2"
  license "MIT OR Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/reflex-search/reflex/releases/download/v0.4.1/reflex-search-aarch64-apple-darwin.tar.xz"
    sha256 "30285dbbd6db8d73fd238582bbf18f4cf99e3576463e6085e05a86b36c6f6329"
  elsif Hardware::CPU.intel?
    url "https://github.com/reflex-search/reflex/releases/download/v0.4.2/reflex-search-x86_64-apple-darwin.tar.xz"
    sha256 "88a600bde03afeb10ce169108a070ea520f40e0a41fdbb85119bf4b7a907a106"
  end

  def install
    bin.install "rfx"
  end

  test do
    system "#{bin}/rfx", "--version"
  end
end
