FROM H1M4N5HU0P/MAFIA-USERBOT:latest

# clonning repo 
RUN git clone https://github.com/mafiarishabh/surturuser-bot.git /root/surturuser-bot

RUN pip install --upgrade pip

# working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
