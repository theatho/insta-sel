sudo apt-get install python-properties-common ; sudo apt-get update ; sudo add-apt-repository -y ppa:ondrej/php ; sudo apt-get update ; sudo apt-get install php7.2 php7.2-cli php7.2-common -y ; sudo apt-get install php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-intl php7.2-mysql php7.2-xml php7.2-zip -y ; sudo apt-get install unzip -y
RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD bash start
