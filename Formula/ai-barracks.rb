class AiBarracks < Formula
  desc "Git-native AI agent workspace with session tracking and persistent memory"
  homepage "https://github.com/CYRok90/ai-barracks"
  url "https://github.com/CYRok90/ai-barracks/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "cf92d4f3694f59f4e4fa5f9352891a5fd7d3e0bc04e1d6a2d48aeaaba1c09e79"
  license "MIT"

  def install
    bin.install "bin/aib"
    pkgshare.install "templates"
    pkgshare.install "scripts"

    # Patch template dir path in the aib script
    inreplace bin/"aib", /^TEMPLATE_DIR=.*$/, "TEMPLATE_DIR=\"#{pkgshare}/templates\""
  end

  test do
    system bin/"aib", "version"
  end
end
