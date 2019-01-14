#!/bin/bash
set -e
set -o pipefail

errors=()

# find all executables and run `shellcheck`
for f in $(find . -type f -not -path '*.git*' -not -iwholename '*.tmux*' -not -name "yubitouch.sh" | sort -u); do
	if file "$f" | grep --quiet shell; then
		{
			shellcheck "$f" && echo "[OK]: sucessfully linted $f"
		} || {
			# add to errors
			errors+=("$f")
		}
	fi
done

if [ ${#errors[@]} -eq 0 ]; then
	echo "No errors, hooray"
else
	echo "These files failed shellcheck: ${errors[*]}"
	exit 1
fi
