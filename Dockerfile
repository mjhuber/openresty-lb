FROM openresty/openresty:alpine-fat
RUN opm install jojohappy/lua-resty-balancer && \
    wget -O /tmp/balancer.zip https://github.com/openresty/lua-resty-balancer/archive/v0.03.zip && \
    unzip /tmp/balancer.zip -d /usr/local/lib/ && \
    cd /usr/local/lib/lua-resty-balancer-0.03 && \
    make && \
    rm /tmp/balancer.zip && \
    cp librestychash.so /usr/local/openresty/lualib/librestychash.so
