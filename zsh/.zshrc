ZSH_THEME="mewi-custom"

plugins=(git)

source ~/.zshrc_local_linux
source $ZSH/oh-my-zsh.sh

export JAVA_HOME="/opt/homebrew/opt/openjdk"

export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/Users/neil.mathew/Library/Android/sdk/platform-tools:$PATH"
export MAPBOX_ACCESS_TOKEN='pk.eyJ1Ijoic2t5ZGlvLXRlYW0iLCJhIjoiY2tlOTJweTlwMG5kMDJ5azAwbm1obnNuNyJ9.Nm-wDK6GsXaZxN_xcfROuQ'

export SMARTLING_USER_IDENITIFIER="yynzsygjdiqeswjebtoormpxgkjxsx"
export SMARTLING_USER_SECRET="2stl234tgg76n2elnohk22nrc7YX%jst9f0j6c0pq5sh4853tmeso9c"
export ANDROID_SHARED_SKYDIO_PATH="/Users/neil.mathew/Developer/IndiaEnterpriseApp/india-enterprise-app-workspace-2/android-shared-skydio/"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/neil.mathew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/neil.mathew/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/neil.mathew/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/neil.mathew/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

