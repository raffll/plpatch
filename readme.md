# Morrowind PL Patch

Kompletna aktualizacja polskich tekstów w formie plików esm przeznaczona na ostatnią polską wersję gry, czyli:
Morrowind + Tribunal + Bloodmoon + Patch 1.6.1820.
Główny zadaniem patcha jest poprawienie jak największej ilości błędów w **tłumaczeniu polskiej wersji gry**.

### Założenia

- Wprowadzenie poprawek związanych z polską wersją: urwane lub nieprzetłumaczone teksty oraz brakujące hiperlinki
- Poprawa bardzo źle przetłumaczonych tekstów, np.: lek na spaczenie -> lek na zarazę
- Poprawa literówek, ortografii, interpunkcji oraz zasad polskiej pisowni
- Poprawa jakości tekstu, rozwinięcia skrótów tam gdzie jest to możliwe
- Ujednolicenie formatowania tekstów np.: dialogi w książkach

### Poprawki techniczne

Patch poprawia także wiele nazw komórek w sposób który ma znaczenie dla silnika gry.
Podobnie jak *Tribunal Fix* tylko dla większości komórek, np. *Vivek, Strefa Hlaalu* zostaje zamieniona na *Vivek, Hlaalu*, żeby dopasować do już istniejących nazw komórek np. *Vivek, Hlaalu: Alchemik*.
Gdy temat jest filtrowany dla komórki *Vivek, Hlaalu*, powinien być widoczny także w *Vivek, Hlaalu: Alchemik*. W oryginalnym tłumaczeniu teksty były różne i niektóre tematy mogły nie być widoczne tak jak zamierzali twórcy gry.

Kolejnym problemem są zdublowane tematy: Obcy, obcy, Siedem Klątw, siedem klątw, Księżyc-i-Gwiazda i księżyc-i-gwiazda.
Które gra łączy w jeden, a w angielskiej wersji istnieją odpowiednio jako: the Stranger, outlander, The Seven Curses, seven curses, Moon-and-Star, the moon-and-star.
Żeby uniknąć nieścisłości tematy i teksty w których powinny wystąpić zostały zmienione następująco:
      
Obcy -> Przybysz
siedem klątw -> Siedem Klątw Sharmata
księżyc-i-gwiazda -> znak księżyca i gwiazdy

Następną ważną dla silnika gry poprawką jest zmiana takiej samej nazwy regionu jak miasta, z Molag Mar na Molag Amur. Od teraz polecenie *coc* przenosi postać w odpowiednie miejsce.
Ma to też znaczenie dla skryptów które zamiast operować na regionie, pracowały na komórce miasta.

Ponadto zdublowany prefiks *Obniżenie* (w oryginale *Drain* i *Damage*) czyli tymczasowe obniżenie i obniżenie na stałe, powodował konflikty nazw. Od teraz tymczasowe obniżenie to *Kara do*.

### Zawartość

- dict_base\EntoPL_plpatch.xml - polski poprawiony słownik
- dict_user\Patch_for_Purists.xml – tłumaczenie moda
- plpatch.bat - skrypt konwertujący
- readme.html - ten plik
- raport.html - kompletny raport zmian
- yampt.exe – konwerter

### Instalacja

- Upewnij się że posiadasz uprawnienia do zapisu w folderze głównym z grą
- Rozpakuj w katalogu głównym np.: *C:\ścieżka\do\Morrowind\plpatch* tak aby plik *plpatch.bat* znajdował się w *C:\ścieżka\do\Morrowind\plpatch\plpatch.bat*
- Zainstaluj modyfikacje wg uznania
- Przekonwertuj wszystkie pliki esm i esp które znajdują się w katalogu *Data Files* uruchamiając plik *plpatch.bat*
- Przekonwertowane pliki zostaną umieszczone w folderze *Data Files* z sufiksem *(plpatch)* np.: *Morrowind (plpatch).esm*
- Przed uruchomieniem gry zaznacz jedynie przekonwertowane pliki, czyli te z sufiksem *(plpatch)*

### Deinstalacja

- Usuń pliki z sufiksem *(plpatch)*
- Usuń folder *plpatch*

### Czym się wspomagałem i ogólne podziękowania 

- Bethesda za grę do której chce mi się wracać po kilkunastu latach 
- CDProject za tłumaczenie 
- Miamian za ważne sugestie, testy i tłumaczenia
- Magnus i Logitech za stary konwerter i słowniki 
- ARHIZ za Arhiz patch 2 PL 
- Hells a.k.a. Hellracer za Tribunal Fix 
- KHRoN za plpatch.3.o1 
- Zgred za UMP 1.6.3 PL 1.0 
- I inni wymienieni w poszczególnych projektach 
- Special thanks to Thepal, quorn, BTB and TES Community for Morrowind Patch Project 
- Special thanks to Half11 and TES Community for Patch for Purists

### Prawa autorskie

Ponieważ wiele ciekawych projektów i tłumaczeń ginie w odmętach internetu, ja osobiście nie roszczę sobie żadnych praw do tych plików.
Możesz dowolnie modyfikować i umieszczać je gdzie chcesz. Konwerter z kolei udostępniany jest na licencji MIT. 

Jeżeli masz jakieś uwagi, uważasz że jakaś zmiana jest niepotrzebna lub błędna, albo znalazłeś literówkę i chcesz się przyłączyć, napisz na forum Nexusa:
https://www.nexusmods.com/morrowind/mods/44136?tab=posts 
lub na kanale Miamiana:
https://discord.gg/7DVB6b6

### Historia zmian

2.0.alpha.8
- Zaktualizowany konwerter do wersji 0.20
- Uproszczony proces konwersji

2.0.alpha.7
- Kolejne poprawki
- Zaktualizowane tłumaczenie moda: Patch for Purists

2.0.alpha.6
- Kolejne poprawki
- Zaktualizowany konwerter do wersji 0.19
- Dodane tłumaczenie moda: More Detailed Places 2016
- Zaktualizowane skrypty do konwersji pluginów w języku polskim

2.0.alpha.5
- Kolejne poprawki
- Dodane tłumaczenie moda: Patch for Purists

2.0.alpha.4
- Kolejne poprawki
- Zaktualizowany konwerter do wersji 0.18
- Usunięte słowniki i skrypty dla tłumaczy (przeniesione do Yet Another Morrowind Plugin Translator)

2.0.alpha.3
- Kolejne poprawki
- Dodany skrypt: twórz_raporty.cmd

2.0.alpha.2
- Kolejne poprawki
- Zaktualizowane skrypty
- Dodane tłumaczenie moda: Quick Char

2.0.alpha.1
- Wiele kolejnych poprawek (kilka razy więcej względem wersji 1.1)
- Jeszcze bardziej uproszczony proces instalacji
- Zaktualizowany konwerter do wersji 0.17
- Poprawki dostosowane do standardu Patch for Purists

1.1
- Kolejne poprawki
- Uproszczony proces instalacji
- Zaktualizowany konwerter do wersji 0.14
- Dodane oryginalne słowniki

1.0
- Pierwsza wersja
