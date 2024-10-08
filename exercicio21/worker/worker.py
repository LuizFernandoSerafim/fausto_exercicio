if __name__ == '__main__':
  r = redis.Redis(host='queue', port=6379, db=0)
  print('Aguardando mensagens ...') ①
  while True:
  mensagem = json.loads(r.blpop('sender')[1])
  print('Mandando a mensagem:', mensagem['assunto'])
  sleep(randint(15, 45))
  print('Mensagem', mensagem['assunto'], 'enviada')