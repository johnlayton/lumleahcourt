require 'formula'

class jenv < Formula
  homepage ''
  url 'https://github.com/johnlayton/lumleahcourt/raw/master/dist/jenv-<%= version %>.tar.gz'
  sha1 '<%= shasum %>'

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