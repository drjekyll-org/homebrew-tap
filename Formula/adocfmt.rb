class Adocfmt < Formula
  desc "An opinionated AsciiDoc formatter"
  homepage "https://github.com/dheid/adocfmt"
  url "https://github.com/dheid/adocfmt/releases/download/v0.1.1/adocfmt.jar"
  version "0.1.1"
  sha256 "9cbca81a7bdebe39abcc63938397cb8db0b5a36a83d7dc2078044230c63addc9"
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
