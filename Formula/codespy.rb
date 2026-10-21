class Codespy < Formula
  include Language::Python::Virtualenv

  desc "Automated code review agent powered by DSPy"
  homepage "https://github.com/khezen/codespy"
  url "https://files.pythonhosted.org/packages/source/c/codespy-ai/codespy_ai-2.4.0.tar.gz"
  sha256 "c26dd624ede33c7ced761bc85d1f6d86a673ecaa65bc2fa09e1adf03ebaad241"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "codespy", shell_output("#{bin}/codespy --version")
  end
end
