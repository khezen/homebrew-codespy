class Codespy < Formula
  include Language::Python::Virtualenv

  desc "Automated code review agent powered by DSPy"
  homepage "https://github.com/khezen/codespy"
  url "https://files.pythonhosted.org/packages/source/c/codespy-ai/codespy_ai-0.3.2.tar.gz"
  sha256 "6ccf13b8b27a1642fd7ef95476df32a3610ea5d16d1270a43ac861cd1add0ed9"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "codespy", shell_output("#{bin}/codespy --version")
  end
end
