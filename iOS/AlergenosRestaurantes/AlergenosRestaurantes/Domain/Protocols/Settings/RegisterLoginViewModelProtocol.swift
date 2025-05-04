protocol RegisterLoginViewModelProtocol: AnyObject {
    var isLogged: Bool { get set }
    var isPremium: Bool { get set }
    var goBack: (() -> Void)? { get set }

    func pressedPremium()
}
