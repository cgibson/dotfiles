
echo "› checking powerlevel9k install"

# Build the dependencies folder if it doesn't already exist
if ! [ -d $DEPS_ROOT ]
then
  mkdir $DEPS_ROOT
fi

POWER_LEVEL_9K_ROOT="$DEPS_ROOT/powerlevel9k"

# Clone the powerlevel9k directory if it doesn't exist, or pull from master if it does
if ! [ -d $POWER_LEVEL_9K_ROOT ]
then
  git clone https://github.com/bhilburn/powerlevel9k.git $POWER_LEVEL_9K_ROOT

  info "  --------- IMPORTANT NOTICE ---------"
  info "  Nerd fonts have been installed, but"
  info "  may not be selected on your terminal"
  info "  of choice. Select font manually."
  info "  --------- IMPORTANT NOTICE ---------"
  info "  We don't (yet) set terminal colors."
else
  git -C $POWER_LEVEL_9K_ROOT pull origin master
fi
