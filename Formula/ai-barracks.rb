class AiBarracks < Formula
  desc "Git-native AI agent workspace with session tracking and persistent memory"
  homepage "https://github.com/ai-barracks/ai-barracks"
  url "https://github.com/ai-barracks/ai-barracks/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "ce11ad8db678a08aaecef084968888bc4eb155fda6f0eea325420df809f2d544"
  license "MIT"

  def install
    bin.install "bin/aib"
    pkgshare.install "templates"
    pkgshare.install "scripts"
    zsh_completion.install "completions/_aib"

    # Patch template dir path in the aib script
    inreplace bin/"aib", /^TEMPLATE_DIR=.*$/, "TEMPLATE_DIR=\"#{pkgshare}/templates\""
  end

  test do
    system bin/"aib", "version"
  end
end