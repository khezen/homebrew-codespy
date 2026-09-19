class Codespy < Formula
  include Language::Python::Virtualenv

  desc "Automated code review agent powered by DSPy"
  homepage "https://github.com/khezen/codespy"
  url "https://files.pythonhosted.org/packages/source/c/codespy-ai/codespy_ai-1.2.4.tar.gz"
  sha256 "d5e364937d2d160089fcdba5ad7ea7e2ba2bed540a18de638511e6283540ceb1"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "codespy", shell_output("#{bin}/codespy --version")
  end
end
