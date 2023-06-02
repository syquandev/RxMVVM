//
//  PagingInfo.swift
//  RxMVVM
//
//  Created by QUANHS on 02/06/2023.
//

public struct PagingInfo<T> {
    public var page: Int
    public var items: [T]
    public var hasMorePages: Bool
    public var totalItems: Int
    public var itemsPerPage: Int
    public var totalPages: Int
    
    public init(page: Int = 1,
                items: [T] = [],
                hasMorePages: Bool = true,
                totalItems: Int = 0,
                itemsPerPage: Int = 0,
                totalPages: Int = 0) {
        self.page = page
        self.items = items
        self.hasMorePages = hasMorePages
        self.totalItems = totalItems
        self.itemsPerPage = itemsPerPage
        self.totalPages = totalPages
    }
}
