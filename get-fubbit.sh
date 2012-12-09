if [ ! -d "deps" ]; then
  mkdir "deps"
fi

cd deps ;\
git clone https://github.com/manpages/fubbit.git ;\
cd fubbit ;\
make ;\
cd .. ;\
mv -ut . fubbit/amqp_client ;\
mv -ut . fubbit/rabbit_common
