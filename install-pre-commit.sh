#!/bin/sh

set -e

curl -s -z rules-cmdl.cjs -o rules-cmdl.cjs https://raw.githubusercontent.com/dhhyi/travel-packlist/refs/heads/rules-cmdl/index.cjs

cat << EOF >.git/hooks/pre-commit
#!/bin/sh
set -e

node rules-cmdl.cjs --format --track-weight --error-on-warnings my-rules.txt
git add my-rules.txt

EOF

chmod +x .git/hooks/pre-commit
