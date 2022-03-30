import Combine
import UIKit

class ModelData: ObservableObject {
    @Published var playerList: [Player] = []
    @Published var selectedPlayer: Player?
    
    init(){
        populateList()
    }
    
    func populateList(){
        playerList.append(Player(name: "FalleN", team: "Imperial", photo: UIImage(named: "fallen")!))
        playerList.append(Player(name: "fer", team: "Imperial", photo: UIImage(named: "fer")!))
        playerList.append(Player(name: "fnx", team: "Imperial", photo: UIImage(named: "fnx")!))
        playerList.append(Player(name: "boltz", team: "Imperial", photo: UIImage(named: "boltz")!))
        playerList.append(Player(name: "VINI", team: "Imperial", photo: UIImage(named:"vini")!))
    }
    
}
