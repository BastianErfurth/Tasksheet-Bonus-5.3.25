enum Character { warrior, mage, archer }

enum DayTime { morning, noon, evening, night }

enum Weather { sunny, rainy, stormy }

void main() {
  int? atackScore = 20;
  Character caracter = Character.warrior;
  DayTime daytime = DayTime.morning;
  Weather weather = Weather.sunny;

  switch (caracter) {
    case Character.warrior:
      switch (atackScore ?? 0) {
        case >= 20 && <= 30:
          weather = Weather.sunny;
          daytime = DayTime.morning;
          print("Warrior ist harmlos bei sonnigem Wetter am Morgen");
        case > 30 && <= 50:
          weather = Weather.rainy;
          daytime = DayTime.noon;
          print("aupassen!,Warrior ist gefährlich am Mittag bei Regen");
        case > 50 && <= 75:
          weather = Weather.sunny;
          daytime = DayTime.evening;
          print("Vorsicht sehr gefährlicher Warrior bei Sonne am Abend");
        case > 75 && <= 100:
          weather = Weather.stormy;
          daytime = DayTime.night;
          print(
              "Alarm! bring dich in Sicherheit vor dem Warrior in der stürmischen Nacht");
      }

    case Character.mage:
      switch (atackScore ?? 0) {
        case >= 20 && <= 30:
          weather = Weather.stormy;
          daytime = DayTime.evening;
          print("Mage ist harmlos bei stürmichem Wetter am Abend");
        case > 30 && <= 50:
          weather = Weather.sunny;
          daytime = DayTime.morning;
          print("aupassen!,Mage ist gefährlich am Morgen bei Sonne");
        case > 50 && <= 75:
          weather = Weather.sunny;
          daytime = DayTime.evening;
          print("Vorsicht sehr gefährlicher Mage bei Sonne am Abend");
        case > 75 && <= 100:
          weather = Weather.stormy;
          daytime = DayTime.night;
          print(
              "Alarm! bring dich in Sicherheit vor dem Mage in der stürmischen Nacht");
      }
    case Character.archer:
      switch (atackScore ?? 0) {
        case >= 20 && <= 30:
          weather = Weather.sunny;
          daytime = DayTime.noon;
          print("Archer ist harmlos bei sonnigem Wetter am Mittag");
        case > 30 && <= 50:
          weather = Weather.rainy;
          daytime = DayTime.night;
          print("aupassen!,Archer ist gefährlich in der Nacht bei Regen");
        case > 50 && <= 75:
          weather = Weather.stormy;
          daytime = DayTime.morning;
          print("Vorsicht sehr gefährlicher Archer bei Sturm am Morgen");
        case > 75 && <= 100:
          weather = Weather.rainy;
          daytime = DayTime.night;
          print(
              "Alarm! bring dich in Sicherheit vor dem Archer in der Nacht bei Regen");
      }
  }
}
