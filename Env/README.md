
`'Cascadia Code PL', Consolas, 'Courier New', monospace, Menlo, menlo`

```
export PATH=$HOME/bin:/usr/local/bin:$PATH
export CLASSPATH=".:/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH"
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
alias grun='java -Xmx500M -cp "/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH" org.antlr.v4.gui.TestRig'

# Path to your oh-my-zsh installation.
export ZSH="/home/clustfuzz/.oh-my-zsh"
export LLVM_BUILD_PATH=$HOME/llvm-project/build
export LLVM_BIN_PATH=$HOME/llvm-project/build/bin

[ -f "/home/clustfuzz/.ghcup/env" ] && source "/home/clustfuzz/.ghcup/env" # ghcup-env
alias copy="xclip -sel clip"

```
