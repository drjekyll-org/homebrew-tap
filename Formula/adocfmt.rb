class Adocfmt < Formula
  desc "An opinionated AsciiDoc formatter"
  homepage "https://github.com/dheid/adocfmt"
  url "https://github.com/dheid/adocfmt/releases/download/v0.1.2/adocfmt.jar"
  version "0.1.2"
  sha256 "2ffbfcd6d40b73e6b57074302694ba5ccad4f16f78fa0474b5cbea16fa888735"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "adocfmt.jar"
    bin.write_jar_script libexec/"adocfmt.jar", "adocfmt", java_version: "17"
  end

  test do
    system "#{bin}/adocfmt", "--help"
  end
end
