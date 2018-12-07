def hello(environ, start_response):
    qry = environ.get('QUERY_STRING')
    list = qry.split("&")
    body = ""
    for x in list:
        y += x + "\n"

    resp = [('Content-type', 'text/plain')]

    start_response('200 OK', resp)
    return [y.strip()]
