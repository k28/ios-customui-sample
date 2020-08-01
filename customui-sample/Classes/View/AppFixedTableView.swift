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
    
}

extension AppFixedTableView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return sections[indexPath.section].cellAtIndex(indexPath.section)
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
}


