#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# IFFFTでTweetするAPIを作りそれをCURLで実行する。
# CreatedAt: 2021-10-02
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$HERE"
	. secret.sh
	curl -X POST -H "Content-Type: application/json" -d '{"value1":"'"$1"'"}' https://maker.ifttt.com/trigger/$IFFFT_EVENT/with/key/$IFFFT_KEY
}
Run "$@"
