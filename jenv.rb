require 'formula'

class jenv < Formula
  homepage ''
  url 'https://github.com/johnlayton/lumleahcourt/raw/master/dist/jenv-0.0.1.tar.gz'
  sha1 '3ebc8ae2ca2656061847ff51246f5933b3adfaa4'

  def install
    inreplace 'libexec/jenv', '/usr/local', HOMEBREW_PREFIX
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
    To use Homebrew's directories rather than ~/.jenv add to your profile:
    export jenv_ROOT=#{var}/jenv

    To enable shims and autocompletion add to your profile:
      if which jenv > /dev/null; then eval "$(jenv init -)"; fi
  EOS
  end

end