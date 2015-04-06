RBEnv for Java
--------------

## Installation

### Basic Homebrew Install

If you're on Mac OS X, consider
[installing with Homebrew](#homebrew-on-mac-os-x).

1. Install using brew command

    ~~~ sh
    $ brew install https://raw.github.com/johnlayton/lumleahcourt/master/jenv.rb
    ~~~

2. Upgrade using brew command

    ~~~ sh
    $ brew upgrade https://raw.github.com/johnlayton/lumleahcourt/master/jenv.rb
    ~~~

### Basic GitHub Checkout

This will get you going with the latest version of jenv and make it
easy to fork and contribute any changes back upstream.

1. Check out jenv into `~/.jenv`.

    ~~~ sh
    $ git clone https://github.com/johnlayton/lumleahcourt.git ~/.jenv
    ~~~

2. Add `~/.jenv/bin` to your `$PATH` for access to the `jenv`
   command-line utility.

    ~~~ sh
    $ echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bash_profile
    ~~~

    **Ubuntu Desktop note**: Modify your `~/.bashrc` instead of `~/.bash_profile`.

    **Zsh note**: Modify your `~/.zshrc` file instead of `~/.bash_profile`.

3. Add `jenv init` to your shell to enable shims and autocompletion.

    ~~~ sh
    $ echo 'eval "$(jenv init -)"' >> ~/.bash_profile
    ~~~

    _Same as in previous step, use `~/.bashrc` on Ubuntu, or `~/.zshrc` for Zsh._

4. Restart your shell so that PATH changes take effect. (Opening a new
   terminal tab will usually do it.) Now check if jenv was set up:

    ~~~ sh
    $ type jenv
    #=> "jenv is a function"
    ~~~

5. `jenv install` command that simplifies the process of
   [installing new Node versions](#installing-node-versions).

### Installing Java Versions

The `jenv install` command ships with jenv out of the box. If you
installed it either as part of GitHub checkout process outlined above 
or via Homebrew, you should be able to:

~~~ sh
# install a Node version:
$ jenv install 0.10.26
~~~

Alternatively to the `install` command, you can download and compile
Node manually as a subdirectory of `~/.jenv/versions/`. An entry in
that directory can also be a symlink to a Node version installed
elsewhere on the filesystem. jenv doesn't care; it will simply treat
any entry in the `versions/` directory as a separate Node version.

### Uninstalling Node Versions

As time goes on, Node versions you install will accumulate in your
`~/.jenv/versions` directory.

To remove old Node versions, simply `rm -rf` the directory of the
version you want to remove. You can find the directory of a particular
Node version with the `jenv prefix` command, e.g. `jenv prefix 0.10.26`.
