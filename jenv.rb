require 'formula'

class Jenv < Formula
  homepage ''
  url 'https://github.com/johnlayton/lumleahcourt/raw/master/dist/jenv-0.0.3.tar.gz'
  sha1 'b6ecbc8f82fb0261274d995a5f9cb381a88ec22c'

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