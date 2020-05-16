function setMainVars() {
## set network dependent variables
NETWORK=""
NODE_USER=${FORK}${NETWORK}
COINPORT=19056
COINRPCPORT=19057
COINAPIPORT=37222
}

function setTestVars() {
## set network dependent variables
NETWORK="-testnet"
NODE_USER=${FORK}${NETWORK}
COINPORT=19156
COINRPCPORT=19157
COINAPIPORT=38222
}

function setGeneralVars() {
## set general variables
COINRUNCMD="dotnet ./Redstone.RedstoneFullNodeD.dll ${NETWORK} -datadir=/home/${NODE_USER}/.${FORK}node -maxblkmem=2 \${stakeparams}"
COINGITHUB=https://github.com/RedstonePlatform/Redstone.git
COINDSRC=/home/${NODE_USER}/code/src/Redstone/Programs/Redstone.RedstoneMasterNodeD
CONF=release
COINDAEMON=${FORK}d
COINCONFIG=${FORK}.conf
COINSTARTUP=/home/${NODE_USER}/${FORK}d
COINDLOC=/home/${NODE_USER}/${FORK}node
COINSERVICELOC=/etc/systemd/system/
COINSERVICENAME=${COINDAEMON}@${NODE_USER}
SWAPSIZE="2048" ## =2GB
}
