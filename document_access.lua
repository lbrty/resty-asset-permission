function check_document_access()
    local payload = {
        args = {uri = ngx.var.request_uri}
    }

    local res = ngx.location.capture("/check-access", payload)

    if res.status == ngx.HTTP_OK then
        return
    end

    ngx.exit(ngx.HTTP_FORBIDDEN)
end


return check_document_access()
