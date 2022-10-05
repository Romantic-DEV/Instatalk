# my-instatalk
Greetings dear visitor. Here you can download app that allows you to instantly communicate with anyone you want without registraion, sms and absolutely free!

### Mechanics
You launch the application. You are given a unique, anonymous nickname. Next, you can create a chat room or join an existing one. Have a nice conversation!

### Photos
- Start page
![изображение](https://user-images.githubusercontent.com/83035520/193475779-f834ba03-0424-481e-89c0-c6d421bb438c.png)

- some wonderful conversation
![изображение](https://user-images.githubusercontent.com/83035520/193475982-6cdbd056-a6ee-4307-a63e-b0f6d42a8544.png)

### To start

- You should have installed ruby(2.5.9) on your pc(how to do this - (here)[https://www.ruby-lang.org/en/documentation/installation/])
- To store data properly my-instatalk uses REDIS for ActionCable. So, you should have installed redis server with disabled password-authentication(how to install redis: (here)[https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-18-04])

1. Download all files to single folder
2. Open CMD
3. Open program directory in CMD
4. Install all the gems (libraries) required by the application by entering these commands in CMD:
```
gem install bundler
bundle install
```
5. Run migrations
```
bundle exec rails db:migrate
```
6. Launch app by entering this(you are in program directory already)
```
bundle exec rails s
```
7. That's all. Now you can use it, just go to 'http://localhost:3000/'

### P.s
This is my RoR study project that I created during  [good programmer course](https://goodprogrammer.ru/rails)

#### What have I learned during developing this app?
- I found out what websockets are
- how they work
- I learned how to implement them with rails ActionCable
- Tried coffescript
- Learned some Jquery basics

## RUS

# my-instatalk
Приветствую, дорогой посетитель. Здесь вы можете скачать приложение, которое позволяет вам мгновенно общаться с кем угодно без регистрации и абсолютно бесплатно!

### Механика
Вы запускаете приложение. Вам выдаётся уникальный, анонимный никнейм. Далее можете создавать комнату для общения или присоединиться к уже существующей. Приятных разговоров!

### Фотографии
- Стартовая страница
![изображение](https://user-images.githubusercontent.com/83035520/193475779-f834ba03-0424-481e-89c0-c6d421bb438c.png)

- Одна из увлекательнейших бесед
![изображение](https://user-images.githubusercontent.com/83035520/193475982-6cdbd056-a6ee-4307-a63e-b0f6d42a8544.png)

### Как запустить
- Вы должны установить ruby(2.5.9) на свой компьютер (как это сделать - [здесь](https://rubyrush.ru/steps/setup-ruby))
- Для правильного хранения данных my-instatalk использует REDIS для ActionCable. Итак, вы должны были установить сервер redis с отключенной парольной аутентификацией (как установить redis: [здесь](https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-18-04-ru))

1. Скачайте все файлы в одну папку
2. Откройте командную строку
3. Откройте директорию приложения в командной строке
4. Установите все гемы(библиотеки) используемые приложением, введя эти комманды:
```
gem install bundler
bundle install
```
5. Прогоните миграции так:
```
bundle exec rails db:migrate
```
6. Запустите приложенеи введя это:
```
bundle exec rails s
```
7. Это всё, теперь вы можете использовать приложение, просто перейдя на эту ссылку 'http://localhost:3000/'

### P.s
Это мой учебный проект на RoR, который я создал во время прохождения [курса хорошего программиста](https://goodprogrammer.ru/rails)


#### Чему я научился во время разработки этого приложения?
- Я узнал что такое веб-сокеты
- Понял как они работают
- Изучил как внедрять их с помощью rails ActionCable
- Ознакомился с coffescript
- Изучил немного Jquery
