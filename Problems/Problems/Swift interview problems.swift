//
//  Swift interview problems.swift
//  Problems
//
//  Created by F1xTeoNtTsS on 30/04/2023.
//

import Foundation

//struct User {
//    var stonks: [Stonk]
//    var bonds: [Bond]
//
//    init(stonks: [Stonk], bonds: [Bond]) {
//        self.stonks = stonks
//        self.bonds = bonds
//    }
//}
//
//struct Stonk {
//    var name: String
//    var id: Int
//}
//
//class Bond {
//    var name: String
//    var id: Int
//
//    init(name: String, id: Int) {
//        self.name = name
//        self.id = id
//    }
//}
//
//let stonks = [Stonk(name: "a", id: 1),
//              Stonk(name: "b", id: 2),
//              Stonk(name: "c", id: 3)]
//
//let bonds = [Bond(name: "z", id: 4),
//             Bond(name: "x", id: 5),
//             Bond(name: "v", id: 6)]
//
//var a = User(stonks: stonks, bonds: bonds)
//var b = a
//
//a.stonks.removeLast()
//print(b.stonks.count)
//
//a.bonds.removeLast()
//print(b.bonds.count)
//
//a.bonds.last?.id = 10
//print(b.bonds.forEach { print($0.id)})


//func abc() {
//    DispatchQueue.main.async {
//        print(1)
//
//        DispatchQueue.global().async {
//            print(2)
//        }
//        print(3)
//    }
//
//    print(4)
//}
//
//abc()
//RunLoop.main.run()


//protocol Animal {
//    func run()
//}
//
//extension Animal {
//    func run() {
//        print ("Animal run" )
//    }
//    func eat() {
//        print ("Animal eat")
//    }
//}
//
//class Cat: Animal {
//    func run () {
//        print("Cat run" )
//    }
//    func eat() {
//        print("Cat eat")
//    }
//}
//
//let cat = Cat()
//cat.run()
//cat.eat ()
//
//let animal: Animal = Cat ()
//animal.run()
//animal.eat()



//import Foundation

//class A {
//   weak var delegat: B?
//}
//class B {
//   weak var delegat: A?
//}
//
//weak var a: A?
//weak var b: B?
//
//func configure() {
//    a = A()
//    b = B()
//    a?.delegat = b
//    b?.delegat = a
//}
//
//configure()
//
//print(a) // A
//print(b) // B
//print(a?.delegat) // B
//print(b?.delegat) // A


//var count = 0
//let group = DispatchGroup()
//
//group.enter()
//let thread = Thread {
//    for _ in 0...9999 {
//        count += 1
//    }
//    group.leave()
//}
//
//group.enter()
//let thread2 = Thread {
//    for _ in 0...9999 {
//        count += 1
//    }
//    group.leave()
//}
//
//thread.start()
//thread2.start()
//
//group.notify(queue: .main, work: DispatchWorkItem(block: {
//    print(count)
//}))
//
//RunLoop.main.run(until: Date(timeInterval: 3, since: Date()))
