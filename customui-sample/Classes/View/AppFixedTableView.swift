//
//  AppFixedTableView.swift
//  customui-sample
//
//  Created by K.Hatano on 2020/08/01.
//  Copyright © 2020 K.Hatano. All rights reserved.
//

import UIKit

// 表示する項目が固定のテーブルビュー
class AppFixedTableView: AppTableView {
    
    var sections: [AppFixedContents] = []
    
    init() {
        super.init(frame: CGRect(), style: .plain)
        
        self.delegate = self
        self.dataSource = self
        self.tableFooterView = UIView()
        setupContents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// 表示コンテンツのセットアップ (サブクラスでオーバーライドする)
    func setupContents() {
    }
    
}

extension AppFixedTableView: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cell = self.tableView(self, cellForRowAt: indexPath)
        if let cell = cell as? ICustomCell {
            return cell.cellHeight
        }

        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return sections[indexPath.section].cellAtIndex(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cell = sections[indexPath.section].cellAtIndex(indexPath.row)
        if cell.isEnabled == false { return }
        cell.onSelect()
    }
    
}

protocol AppFixedContents {
    
    // Cellの数を返す
    var count: Int { get }
    
    /// IndexのCellを返す
    /// - Parameter index: Int
    func cellAtIndex(_ index: Int) -> AppTableViewCell
    
}

class FixedContents : AppFixedContents {
    var contents: [AppTableViewCell] = []
    
    var count: Int {
        get { return contents.count }
    }
    
    func cellAtIndex(_ index: Int) -> AppTableViewCell {
        return contents[index]
    }
    
    func append(_ cell: AppTableViewCell) {
        contents.append(cell)
    }
    
    func append(_ cellMakeFunc: (() -> AppTableViewCell?)) {
        if let cell = cellMakeFunc() {
            contents.append(cell)
        }
    }
    
}


