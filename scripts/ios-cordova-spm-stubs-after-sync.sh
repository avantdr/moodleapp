#!/usr/bin/env bash
# After `npx cap sync ios`, Capacitor may remove Cordova plugin SPM folders that are still
# listed in ios/App/CapApp-SPM/Package.swift, causing ENOENT when Xcode resolves packages.
# This recreates minimal SwiftPM stub packages (Dummy.swift only) for any plugin directory
# that exists but is missing Package.swift, and for known plugin names that must exist.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/../ios/capacitor-cordova-ios-plugins/sources" && pwd)"

ensure_stub() {
  local name="$1"
  local dir="$ROOT/$name"
  if [[ -f "$dir/Package.swift" ]]; then
    return 0
  fi
  echo "ios-cordova-spm-stubs: creating stub for $name"
  mkdir -p "$dir/Sources/$name"
  if [[ ! -f "$dir/Sources/$name/Dummy.swift" ]]; then
    echo 'import Foundation' > "$dir/Sources/$name/Dummy.swift"
  fi
  cat > "$dir/Package.swift" <<EOF
// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "${name}",
    products: [.library(name: "${name}", targets: ["${name}"])],
    targets: [.target(name: "${name}", path: "Sources/${name}")]
)
EOF
}

# Known gaps after sync when plugin copy is skipped
ensure_stub "MoodlehqPhonegapPluginPush"
ensure_stub "CordovaPluginCustomurlscheme"
ensure_stub "Es6PromisePlugin"

# Any other folder under sources missing Package.swift (e.g. partial delete)
for d in "$ROOT"/*/; do
  [[ -d "$d" ]] || continue
  base=$(basename "$d")
  [[ "$base" == ".gitkeep" ]] && continue
  if [[ ! -f "$d/Package.swift" ]]; then
    ensure_stub "$base"
  fi
done

echo "ios-cordova-spm-stubs: done."
