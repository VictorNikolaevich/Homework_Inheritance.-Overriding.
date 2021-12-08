import Foundation

///Задача 1

class Artist {
    var artistName: String
    var artistCountry: String
    var artistGerne: String
    init(artistName: String, artistCountry: String, artistGerne: String) {
        self.artistName = artistName
        self.artistCountry = artistCountry
        self.artistGerne = artistGerne
    }
    func writeTrack(track: String) {
        print("Я \(artistName) написал трек \(track)")
    }
    func performTrack(track: String) {
        print("Я \(artistName) исполнил трек \(track)")
    }
}
class Jazz: Artist {
    //init  наследуется от суперкласса
}
class Shanson: Artist {
    //init  наследуется от суперкласса
}
class Metal: Artist {
    //init  наследуется от суперкласса
}
let jazzWriter = Jazz(artistName: "Dizzy Gillespie", artistCountry: "USA", artistGerne: "Jazz")
jazzWriter.writeTrack(track: "Groovin High")
let jazzExecutor = Jazz(artistName: "Miles Davis", artistCountry: "USA", artistGerne: "Jazz")
jazzExecutor.performTrack(track: "Groovin High")
let shansonWriten = Shanson(artistName: "Viktor Krug", artistCountry: "Russia Federation", artistGerne: "Shanson")
shansonWriten.writeTrack(track: "Vladimir Central")
let shansonExecutor = Shanson(artistName: "Michail Krug", artistCountry: "Russia Federation", artistGerne: "Shanson")
shansonExecutor.performTrack(track: "Vladimir Central")
let metalWriter = Metal(artistName: "Till lindemann", artistCountry: "Germany", artistGerne: "Metal")
metalWriter.writeTrack(track: "Du hast")
let metalExecutor = Metal(artistName: "Rammstein", artistCountry: "Germany", artistGerne: "Metal")
metalExecutor.performTrack(track: "Du hast")

print("--------------------------------------")

///Задача 2

class Artist1 {
    var artistName1: String
    var artistCountry1: String
    var artistGerne1: String
    init(artistName1: String, artistCountry1: String, artistGerne1: String) {
        self.artistName1 = artistName1
        self.artistCountry1 = artistCountry1
        self.artistGerne1 = artistGerne1
    }
    func writeTrack1(track: String) {
        print("Я \(artistName1) написал трек \(track)")
    }
    func performTrack1(track: String) {
        print("Я \(artistName1) исполнил трек \(track)")
    }
}
final class Jazz1: Artist1 {
    
    let musicalInstrument: String
    let jazzGerne: String

    init(artistName1: String, artistCountry1: String, artistGerne1: String, musicalInstrument: String, jazzGerne: String) {
        self.musicalInstrument = musicalInstrument
        self.jazzGerne = jazzGerne
        super.init(artistName1: artistName1, artistCountry1: artistCountry1, artistGerne1: artistGerne1)
    }
    override func writeTrack1(track: String) {
        super.writeTrack1(track: track)
        print("\(artistName1) играет на музыкальном инструменте \(musicalInstrument)")
    }
    override func performTrack1(track: String) {
        super.performTrack1(track: track)
        print("\(artistName1) исполняет подтип жанра \(jazzGerne)")
    }
}
let jazzWriter1 = Jazz1(artistName1: "Dizzy Gillespie", artistCountry1: "USA", artistGerne1: "Jazz", musicalInstrument: "Saxophone", jazzGerne: "Work song")
let jazzExecutor1 = Jazz1(artistName1: "Miles Davis", artistCountry1: "USA", artistGerne1: "Jazz", musicalInstrument: "Saxophone", jazzGerne: "Work song")
jazzWriter1.writeTrack1(track: "Groovin High")
jazzExecutor1.performTrack1(track: "Groovin High")

print("--------------------------------------")

final class Shanson1: Artist1 {
    
    let languageMusic: String
    let yearBirth: Int
    
    init(artistName1: String, artistCountry1: String, artistGerne1: String, languageMusic: String, yearBirth: Int) {
        self.languageMusic = languageMusic
        self.yearBirth = yearBirth
        super.init(artistName1: artistName1, artistCountry1: artistCountry1, artistGerne1: artistGerne1)
    }
    override func writeTrack1(track: String) {
        super.writeTrack1(track: track)
        print("\(artistName1) пишет песню на языке \(languageMusic)")
    }
    override func performTrack1(track: String) {
        super.performTrack1(track: track)
        print("\(artistName1) и его год рождения \(yearBirth)")
    }
}
let shansonWriter1 = Shanson1(artistName1: "Viktor Krug", artistCountry1: "Russia Federation", artistGerne1: "Shanson", languageMusic: "Russia", yearBirth: 1960)
let shansonExecutor1 = Shanson1(artistName1: "Michail Krug", artistCountry1: "Russia Federation", artistGerne1: "Shanson", languageMusic: "Russia", yearBirth: 1962)
shansonWriter1.writeTrack1(track: "Vladimir Central")
shansonExecutor1.performTrack1(track: "Vladimir Central")

print("--------------------------------------")

final class Metal1: Artist1 {
    
    let bandDrummer: String
    let bestTrack: String
    
    init(artistName1: String, artistCountry1: String, artistGerne1: String, bandDrummer: String, bestTrack: String) {
    self.bandDrummer = bandDrummer
    self.bestTrack = bestTrack
        super.init(artistName1: artistName1, artistCountry1: artistCountry1, artistGerne1: artistGerne1)
    }
    override func writeTrack1(track: String) {
        super.writeTrack1(track: track)
        print("Лучший написанный придуманный трек называется \(bestTrack)")
    }
    override func performTrack1(track: String) {
        super.performTrack1(track: track)
        print("Лучшее барабанное в группе у \(bandDrummer)")
    }
}
let metalWriter1 = Metal1(artistName1: "Till lindemann", artistCountry1: "Germany", artistGerne1: "Metal", bandDrummer: "Christoph Schneider", bestTrack: "Du Hast")
let metalExecutor1 = Metal1(artistName1: "Rammstein", artistCountry1: "Germany", artistGerne1: "Metal", bandDrummer: "Christoph Schneider", bestTrack: "Du Hast")
metalWriter1.writeTrack1(track: "Du Hast")
metalExecutor1.performTrack1(track: "Du Hast")

print("--------------------------------------")

/// Задача 3

var arrayArtist: [Artist1] = []
arrayArtist.append(jazzWriter1)
arrayArtist.append(jazzExecutor1)
arrayArtist.append(shansonWriter1)
arrayArtist.append(shansonExecutor1)
arrayArtist.append(metalWriter1)
arrayArtist.append(metalExecutor1)
var arrayObject = arrayArtist
arrayArtist[0].writeTrack1(track: "Groovin High")
arrayObject[1].performTrack1(track: "Groovin High")
arrayArtist[2].writeTrack1(track: "Vladimir Central")
arrayObject[3].performTrack1(track: "Vladimir Central")
arrayArtist[4].writeTrack1(track: "Du Hast")
arrayObject[5].performTrack1(track: "Du Hast")

/*
 Отчет о том, что я понял:
 Наследование - это возможность одного класса принимать свойства, методы и остаточные характеристики другого класса. Он дает возможность повторно использовать код. То есть мы можем наследовать от одного класса несколько наследников, которые будут принимать свойства, методы и характеристики этого основного класса и таким образом мы меньше пишем код, то есть мы забираем поведение этого класса и как бы используем, то что он нам предоставляет из коробки. Но оно работает только для классов так как это ссылочный тип.
 В программировании есть родительский класс, он же базовый, он же суперкласс. А тот класс, который наследует свойства и методы суперкласса это сабкласс, он же дочерний класс или подкласс.
 Синтаксис простой, есть 2 точки в имени класса, после которых пишется другое имя класса. То что пишется перед 2мя точками это имя дочернего класса, а то что после это имя базового класса. Если после 2х точек ничего не написано, то у нас класс по умолчанию становится базовым, так как он ни от чего не наследуется, это самостоятельная боевая единица.
 Сабкласс может создавать собственные реализации свойств и методов, наследуемых от суперкласса. Такие реализации называются переопределением. Для переопределения параметров суперкласса необходимо указывать ключевое слово override перед определением элемента.
 Мы также можем расширять поведение нашего базового класса своим классом, чтобы получить желаемые характеристики. Например, если мы хотим расширить поведение метода, мы можем сделать, указав точно такую же сигнатуру дописав ключевое слово override и расширим путем банального добавления вывода в консоль какого - нибудь вывода текста. И через ключевое слово слова super, мы можем ссылаться на наш родительский класс. В целом расширение родительского класса в классе наследнике соответствует принципу Барбары Лисков (LSP) третья буква SOLID, которая гласит, что класс наследник не должен нарушать контракт класса родителя, то естьне должен изменять поведение класса родителя, а только его расширять.
 Наследуемый инициализатор может быть использован для создания экземпляра подкласса, если набор свойств в подклассе, требующих установки значений, не отличается от набора свойств в суперклассе. То есть если мы не определяем в классе наследнике своего собственного инициализатора, то используется инициализатор по умолчанию(суперкласса), достается из "коробки".
 Если подкласс имеет хотябы один собственный инициализатор, то инициализаторы родителя не наследуются, их нельзя использовать по умолчанию.
 designated initializer - это обязательный инициализатор, он инициализирует объект полностью достаточно для использования.
 Ссылка на self это текущий instance текущего экземпляра класса, а super это текущий instance нашего родительского класса от которого наследован наш класс наследник. Через ключевое слово super можно вызвать инициализатор и проинициализировать свойства базового класса в сабклассе. Компилятор должен понимать какие значения будут в заданных свойствах либо делать их опциональными.
 Мы можем предотвратить переопределение метода, свойства или индекса, обозначив его как конечный. Сделать это можно написав ключевое слово final перед ключевым словом метода, свойства, индекса или класса. Любая попытка переписать конечный метод, свойство, класс или индекс приведет к ошибке компиляции
 */
