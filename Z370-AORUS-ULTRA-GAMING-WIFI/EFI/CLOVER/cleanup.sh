#!/usr/bin/env bash

plutil -replace RtVariables.MLB -string '' config.plist
plutil -replace SMBIOS.BoardSerialNumber -string '' config.plist
plutil -replace SMBIOS.SerialNumber -string '' config.plist
plutil -replace SMBIOS.SmUUID -string '' config.plist
