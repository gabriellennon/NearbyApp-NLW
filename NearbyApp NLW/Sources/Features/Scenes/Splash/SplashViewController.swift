//
//  SplashViewController.swift
//  NearbyApp NLW
//
//  Created by Gabriel Lennon on 06/01/25.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {
    let contentView: SplashView
    weak var delegate: SplashFlowDelegate?
    
    init(contentView: SplashView, delegate: SplashFlowDelegate) {
        self.contentView = contentView
        self.delegate = delegate
        // nil = null
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Responsavel pelo ciclo de vida
    //DidLoad = quando a tela acabou de carregar chama tudo o que está dentro
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        decideFlow()
    }
    
    private func setup() {
        self.view.addSubview(contentView)
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = Colors.greenLight
        
        setupConstraints()
    }
    
    // Conteúdo da nossa tela
    private func setupConstraints() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    // Decidir se o usuario vai para home ou para a tela de dicas
    private func decideFlow(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){ [ weak self] in
            self?.delegate?.decideNavigationFlow()
        }
    }
}
