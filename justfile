update-test:
  rm -rf tests/**/ref
  tt update

test:
  tt run
