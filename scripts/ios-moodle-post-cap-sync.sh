#!/usr/bin/env bash
# Re-apply Moodle / Capacitor 8 iOS Cordova plugin fixes after `npx cap sync ios`.
# Cap sync overwrites ios/capacitor-cordova-ios-plugins/sources; this script restores
# known-good copies from scripts/ios-moodle-plugin-overlays/ and recreates SPM stubs.
#
# Usage:
#   ./scripts/ios-moodle-post-cap-sync.sh
# Or from repo root (recommended):
#   npm run cap:sync:ios
#
# To add a new fix: copy the patched file into scripts/ios-moodle-plugin-overlays/
# using the same path as under ios/capacitor-cordova-ios-plugins/sources/ (see existing entries).
# Overlays include: Ionic WebView / StatusBar / QRScanner;
# MoodlehqCordovaPluginAdvancedHttp: CordovaHttpPlugin.h + CordovaHttpPlugin.m
#   (CDVPlugin.h / CDVFile.h con import tra virgolette, fix Capacitor 8 SPM: niente <Cordova/...>),
#   SM_AFHTTPSessionManager.m + SM_AFNetworkReachabilityManager.m (no netinet6/in6.h, Xcode 26);
# CordovaPluginNetworkInformation/CDVReachability.m (Xcode 26: no netinet6/in6.h);
# stub Package.swift + Dummy.swift for AdvancedHttp, MediaCapture, Zip, FileTransfer, backgroundAudio.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SOURCES="$REPO_ROOT/ios/capacitor-cordova-ios-plugins/sources"
OVERLAY="$SCRIPT_DIR/ios-moodle-plugin-overlays"

echo "ios-moodle-post-cap-sync: repo root $REPO_ROOT"

if [[ ! -d "$SOURCES" ]]; then
  echo "ios-moodle-post-cap-sync: error: missing $SOURCES (run cap sync ios first?)" >&2
  exit 1
fi

# Recreate Dummy.swift stub packages when sync removed Package.swift / folders.
"$SCRIPT_DIR/ios-cordova-spm-stubs-after-sync.sh"

if [[ ! -d "$OVERLAY" ]]; then
  echo "ios-moodle-post-cap-sync: warning: no overlay dir at $OVERLAY (skipping file overlays)" >&2
  echo "ios-moodle-post-cap-sync: done."
  exit 0
fi

overlay_count=0
while IFS= read -r -d '' file; do
  rel="${file#$OVERLAY/}"
  dest="$SOURCES/$rel"
  mkdir -p "$(dirname "$dest")"
  cp -f "$file" "$dest"
  echo "ios-moodle-post-cap-sync: overlay -> $rel"
  overlay_count=$((overlay_count + 1))
done < <(find "$OVERLAY" -type f -print0)

echo "ios-moodle-post-cap-sync: applied $overlay_count overlay file(s). done."
