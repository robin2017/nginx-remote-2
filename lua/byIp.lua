clientIp = ngx.var.remote_addr
if clientIp =='122.96.40.176' then
    ngx.exec('@server_after')
    return
end
ngx.exec('@server_before')
