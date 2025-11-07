  class Reflex < Formula
    desc "Local-first, structure-aware code search engine for AI agents"
    homepage "https://github.com/reflex-search/reflex"
    version "0.4.1"
    license "MIT OR Apache-2.0"

    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/reflex-search/reflex/releases/download/v0.4.1/reflex-search-aarch64-apple-darwin.tar.xz"
        sha256 "30285dbbd6db8d73fd238582bbf18f4cf99e3576463e6085e05a86b36c6f6329"
      else
        url "https://github.com/reflex-search/reflex/releases/download/v0.4.1/reflex-search-x86_64-apple-darwin.tar.xz"
        sha256 "3c27e0c1e43c3312a910f2634b41c84909f96f637357a96280aa11c0c80a29cc"
      end
    end

    def install
      bin.install "rfx"
    end

    test do
      system "#{bin}/rfx", "--version"
    end
  end
