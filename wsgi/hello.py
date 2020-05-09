def worker(environ):
    val = str(environ['wcgi.input'])
    val = val[val.index('?')+1:]
    res =  val.split('&')
    result = '\n'.join(res) 
    return result
 

def application(environ, start_response):
    status = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    body = worker(environ)
    start_response(status, headers)
    return [body]
