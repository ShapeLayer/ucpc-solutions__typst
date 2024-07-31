update-test:
  rm -rf tests/**/ref
  typst-test update --all

test:
  typst-test run
