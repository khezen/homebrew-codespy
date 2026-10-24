class Codespy < Formula
  include Language::Python::Virtualenv

  desc "Automated code review agent powered by DSPy"
  homepage "https://github.com/khezen/codespy"
  url "https://files.pythonhosted.org/packages/source/c/codespy-ai/codespy_ai-2.4.2.tar.gz"
  sha256 "7e312c10a06a1f57c8e4cfb08b591c431b813aaf223df0718fe2b45bb4abf029"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "codespy", shell_output("#{bin}/codespy --version")
  end
end
