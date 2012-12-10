if [ ! -d "deps" ]; then
  mkdir "deps"
fi

if [ ! -d "deps/amqp_client" ]; then
  cd deps ;\
  git clone https://github.com/manpages/fubbit.git ;\
  cd fubbit ;\
  make ;\
  cd .. ;\
  mv -ut . fubbit/deps/amqp_client ;\
  mv -ut . fubbit/deps/rabbit_common
fi
