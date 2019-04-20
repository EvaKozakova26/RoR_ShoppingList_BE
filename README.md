## Jak projekt spustit lokálně (RubyMine IDE)
1. Otevřít projekt `rails`
2. Je potřeba mít nainstalované `Ruby + devkit (verze 2.4.4)` a `MySQL server (verze 5.7)`
3. v souboru `database.yml ` je potřeba změnit přihlašovací údaje do lokální db
4. Konfigurace projektu
```
gem install rails
bundle install
```
5. DB migrace
```
rake db:drop:all
rake db:create:all
rails db:migrate 
```
6. Spuštění
```
rails server
```

Aplikace běží na `localhost:8080`

