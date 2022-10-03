#!/usr/bin/env bash

# author: jmoreno

# This code will pull changes in all the repositories inside the folder it's placed

PURPLE='\033[1;35m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
RED='\033[1;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}Updating all repositories in this directory${NC}"

GIT_PASSWORD=ATBBVEzeNe67wfsHZ3aDz6utMscbE9273F0D

for f in *; do
    if [ -d "$f" ]; then
        cd $f
        if [ -d .git ]; then
            echo -e "${PURPLE}Pulling changes from ${BLUE}"$f
            git pull
		else
			echo -e "${RED}No git repository found in ${BLUE}"$f
        fi
        cd ..
    fi
done

echo -e "${GREEN}Done!"
