FROM busybox

# Устанавливаем необходимые пакеты
RUN apk add --no-cache gotty neofetch wget

# Копируем скрипт entrypoint.sh в корень контейнера
COPY entrypoint.sh /

# Указываем ENTRYPOINT для запуска скрипта
ENTRYPOINT ["/entrypoint.sh"]

# Указываем CMD для запуска obash
CMD ["/bin/sh"]
