#!/bin/sh

cat << EOF >.git/hooks/pre-commit
#!/bin/sh
curl -s -z rules-cmdl.cjs -o rules-cmdl.cjs https://raw.githubusercontent.com/dhhyi/travel-packlist/refs/heads/rules-cmdl/index.cjs

node rules-cmdl.cjs --format my-rules.txt

git add my-rules.txt

EOF

chmod +x .git/hooks/pre-commit
