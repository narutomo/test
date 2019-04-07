//
//  ViewController.swift
//  RxSwiftTest
//
//  Created by Tomoko Ikenoue on 2019/02/17.
//  Copyright © 2019 Tomoko Ikenoue. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let disposeBag = DisposeBag()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // 文字を入れたら即座に反映される処理
        textField.rx.text.orEmpty
            .map {$0.description}
            .bind(to: label.rx.text)
            .disposed(by: disposeBag)
    }


}

