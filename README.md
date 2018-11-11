# Copy Current Git Path

Copy relative current path from git dir to clipboard.

When you are in the Git project `rails-example` and current buffer is `/Users/blue0513/github/rails-examples/app/models/app/models/user.rb`,
by executing command, you can copy `app/models/user.rb` to your clipboard.

## Usage

Load this script in your init.el

```el
(require 'copy-current-git-path)
```

Execute the command under the git controlled project

```sh
M-x copy-current-git-path
```
