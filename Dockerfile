# 1. Maquina com Python
FROM python:3.10.5-slim-bullseye

# 2. Copy arquivos
WORKDIR /app
COPY requirements.txt .

# 3. Instalar as Dependencias
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy arquivos
COPY . .

# 4. Expor Porta
EXPOSE 8000

# 5. Rodar a aplicação
CMD python -m uvicorn main:app --host 0.0.0.0 --port 8000 --reload