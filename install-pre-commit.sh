#!/bin/sh

cat << EOF >.git/hooks/pre-commit
#!/bin/sh
curl https://raw.githubusercontent.com/dhhyi/travel-packlist/refs/heads/rules-cmdl/index.cjs | node - --format my-rules.txt

git add my-rules.txt

EOF

chmod +x .git/hooks/pre-commit
