FROM pytorch/pytorch

COPY . /app/
WORKDIR /app

RUN git clone https://github.com/vacancy/Synchronized-BatchNorm-PyTorch
RUN pip install -r requirements.txt

ENV PYTHONPATH "${PYTHONPATH}:/app/Synchronized-BatchNorm-PyTorch"

ENTRYPOINT [ "python" ]
EXPOSE 5000
CMD [ "flask/app.py" ]
