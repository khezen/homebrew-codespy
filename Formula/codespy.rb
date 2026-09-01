class Codespy < Formula
  include Language::Python::Virtualenv

  desc "Automated code review agent powered by DSPy"
  homepage "https://github.com/khezen/codespy"
  url "https://files.pythonhosted.org/packages/source/c/codespy-ai/codespy_ai-1.0.15.tar.gz"
  sha256 "7ca210be6098ceac71358b4174c069b5745faa589f486b64b17e3171e34cde5b"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "codespy", shell_output("#{bin}/codespy --version")
  end
end
