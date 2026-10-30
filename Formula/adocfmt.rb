class Adocfmt < Formula
  desc "An opinionated AsciiDoc formatter"
  homepage "https://github.com/dheid/adocfmt"
  url "https://github.com/dheid/adocfmt/releases/download/v0.3.2/adocfmt.jar"
  version "0.3.2"
  sha256 "107d722c9a6fac1d9c72548eb6ca14225c27d913c04275b1f585953df84c06f7"
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
