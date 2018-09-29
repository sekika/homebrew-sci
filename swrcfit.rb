class Swrcfit < Formula
  desc "Fitting of soil water retention curve"
  homepage "https://swrcfit.sourceforge.io/"
  # doi "10.5194/hessd-4-407-2007"
  url "https://github.com/sekika/swrcfit/archive/v3.1.tar.gz"
  sha256 "69880cb402dba34634a84f41412e1fc703547d74b2672c7efcccf70df1ae250a"
  revision 2
  head "https://github.com/sekika/swrcfit.git"

  depends_on "octave"
  depends_on "wget"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/swrcfit", "-v"
  end
end
