FROM pytorch/pytorch
RUN apt-get update
RUN apt-get install -y g++ unixodbc-dev iputils-ping curl gpg lsb-release
RUN apt-get update
RUN pip install pyodbc
RUN pip install pymssql

# mssql
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list | tee /etc/apt/sources.list.d/mssql-release.list

RUN apt-get update
RUN ACCEPT_EULA=Y apt-get install -y msodbcsql18
# RUN ACCEPT_EULA=Y apt-get install -y mssql-tools18
RUN echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc
RUN . ~/.bashrc
#COPY mssql.sh /mssql.sh
#RUN /bin/bash /mssql.sh

RUN curl -fsSL https://ollama.com/install.sh | sh

RUN pip install transformers
# RUN pip install pipeline
RUN pip install tokenizer
RUN pip install datasets
RUN pip install flask
RUN pip install seqeval
RUN pip install sacrebleu
RUN pip install nltk
RUN pip install accelerate
RUN pip install evaluate
RUN pip install qiskit
RUN pip install jupyterlab
RUN pip install ipywidgets
RUN pip install ollama
RUN pip install iplantuml
RUN apt-get install -y plantuml
RUN cp /usr/share/plantuml/plantuml.jar /usr/local/bin/plantuml.jar
COPY run.sh /run.sh
#RUN apk add python3 py3-pip
#RUN python3 -m venv . 
#RUN . bin/activate && pip install transformers

#COPY installmistral.sh /installmistral.sh
#RUN ollama serve & >/dev/null && ollama pull mistral

#RUN /bin/bash /installmistral.sh
#RUN rm /installmistral.sh
ENV OLLAMA_MODELS=/workspace/ollama/
EXPOSE 8080
EXPOSE 11434
CMD ["/bin/bash", "/run.sh"]
