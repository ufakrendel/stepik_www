def worker(environ):
        val = str(environ['QUERY_STRING'])
        res =  val.split('&')
        result = '\n'.join(res)
        return bytes(result,'utf-8')

def application(environ, start_response):
    status = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    body = worker(environ)
    start_response(status, headers)
    return [body]

