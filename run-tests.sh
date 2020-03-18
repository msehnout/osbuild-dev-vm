for i in /usr/libexec/tests/osbuild-composer/*
do
  if ! ${i}; then
    echo "Test ${i} failed"
  fi
done
