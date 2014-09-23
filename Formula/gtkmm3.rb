require "formula"

class Gtkmm3 < Formula
  homepage "http://www.gtkmm.org/"
  url "http://ftp.gnome.org/pub/GNOME/sources/gtkmm/3.14/gtkmm-3.14.0.tar.xz"
  sha256 "d9f528a62c6ec226fa08287c45c7465b2dce5aae5068e9ac48d30a64a378e48b"

  depends_on "pkg-config" => :build
  depends_on "glibmm"
  depends_on "gtk+3"
  depends_on "libsigc++"
  depends_on "pangomm"
  depends_on "atkmm"
  depends_on "cairomm"
  depends_on :x11

  def install
    system "./configure", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
