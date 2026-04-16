#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
export GOMODCACHE="${GOMODCACHE:-${REPO_ROOT}/.cache/gomod}"
export GOCACHE="${GOCACHE:-${REPO_ROOT}/.cache/go-build}"

mkdir -p "${GOMODCACHE}" "${GOCACHE}"

go mod download github.com/oer-particle-physics/hugo-styles >/dev/null
MODULE_DIR="$(go list -m -f '{{.Dir}}' github.com/oer-particle-physics/hugo-styles)"
SOURCE_SCRIPT="${MODULE_DIR}/scripts/build-versioned-site.py"
TARGET_SCRIPT="${SCRIPT_DIR}/build-versioned-site.py"

if [[ -z "${MODULE_DIR}" ]]; then
  echo "Error: could not resolve github.com/oer-particle-physics/hugo-styles module directory" >&2
  exit 1
fi

if [[ ! -f "${SOURCE_SCRIPT}" ]]; then
  if [[ -f "${TARGET_SCRIPT}" ]]; then
    echo "Pinned hugo-styles module does not provide ${SOURCE_SCRIPT##*/} yet; leaving committed ${TARGET_SCRIPT##*/} unchanged"
    exit 0
  fi
  echo "Error: expected source script not found at ${SOURCE_SCRIPT}" >&2
  exit 1
fi

install -m 0755 "${SOURCE_SCRIPT}" "${TARGET_SCRIPT}"
echo "Synced ${TARGET_SCRIPT} from ${SOURCE_SCRIPT}"
