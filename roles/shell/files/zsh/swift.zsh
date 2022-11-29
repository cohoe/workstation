export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"
if [ -f "${SWIFTENV_ROOT}/bin/swiftenv" ]; then
  eval "$(swiftenv init -)"
fi
export LINUX_SOURCEKIT_LIB_PATH=/usr/libexec/swift/lib
