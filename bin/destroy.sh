#!/usr/bin/env bash

set -e

# Setting Colors
BLUE='\033[0;34m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' #No Color
NOW=$(date "+%Y-%m-%d_%H-%M-%S")

echo -e "${BLUE}Stopping services...${NC}"
docker stop lab-control-plane || true
docker stop lab-worker || true
echo

echo -e "${BLUE}Removing services...${NC}"
docker rm lab-control-plane || true
docker rm lab-worker || true
echo

echo -e "${BLUE}Removing init...${NC}"
docker compose down -v
echo

echo -e "${BLUE}Done.${NC}"
