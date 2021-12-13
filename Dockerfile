#Sistema Operacional
FROM ubuntu:18.04

#Dependências do sistema
RUN apt-get update -y
RUN apt-get install -y python3-dev python3-pip build-essential

#Pacotes do Python
RUN pip3 install --upgrade pip #Atualização do gerenciador de pacotes
RUN pip3 install jupyter #Instalação do pacote jupyter notebook

WORKDIR /notebook
COPY . /notebook

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]
# jupyter notebook --ip 0.0.0.0 --allow-root
