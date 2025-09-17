# Use uma imagem oficial do Python
FROM python:3.9-slim

# Define diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto
COPY . .

# Instala dependências
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expõe a porta (Fly.io define a porta via $PORT)
EXPOSE 8080

# Comando para rodar o Flask (ajuste se seu arquivo principal não for main.py)
CMD ["python", "app.py"]
