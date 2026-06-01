class AiBarracks < Formula
  desc "Git-native AI agent workspace with session tracking and persistent memory"
  homepage "https://github.com/ai-barracks/ai-barracks"
  url "https://github.com/ai-barracks/ai-barracks/archive/refs/tags/v1.3.2.tar.gz"
  sha256 "957d663a7bc71c3e12e16315346a5a472c6ae800bc6bcf15612c0445687dc7c7"
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