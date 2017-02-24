//
//  YoshiResuableCellDataSource.swift
//  Yoshi
//
//  Created by Kanglei Fang on 24/02/2017.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

/// Defines the data source for DebugViewController custom cell
public protocol YoshiResuableCellDataSource {

    /// Reuse identifier for the cell
    static var reuseIdentifier: String { get }

    /// Nib file for the cell, nullable
    static var nib: UINib? { get }

    /// Function to dequeue the cell for the given Yoshi table view
    ///
    /// - Parameters:
    ///   - tableView: Yoshi debug table view, note that this property is used mainly for calling `dequeueReusableCell`.
    ///   Modification on the tableview is disencouraged
    /// - Returns: An UITableViewCell instance
    func cellFor(tableView: UITableView) -> UITableViewCell
}

extension YoshiResuableCellDataSource {

    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }

    static var nib: UINib? {
        return nil
    }
}
