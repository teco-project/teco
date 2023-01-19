//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Scf {
    /// ListNamespaces请求参数结构体
    public struct ListNamespacesRequest: TCRequestModel {
        /// 返回数据长度，默认值为 20
        public let limit: Int64?

        /// 数据的偏移量，默认值为 0
        public let offset: Int64?

        /// 根据哪个字段进行返回结果排序,支持以下字段：Name,Updatetime
        public let orderby: String?

        /// 以升序还是降序的方式返回结果，可选值 ASC 和 DESC
        public let order: String?

        /// 关键字匹配搜索，Key 可选值为 Namespace 和 Description，多个搜索条件之间是与的关系
        public let searchKey: [SearchKey]?

        public init(limit: Int64? = nil, offset: Int64? = nil, orderby: String? = nil, order: String? = nil, searchKey: [SearchKey]? = nil) {
            self.limit = limit
            self.offset = offset
            self.orderby = orderby
            self.order = order
            self.searchKey = searchKey
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case orderby = "Orderby"
            case order = "Order"
            case searchKey = "SearchKey"
        }
    }

    /// ListNamespaces返回参数结构体
    public struct ListNamespacesResponse: TCResponseModel {
        /// namespace详情
        public let namespaces: [Namespace]

        /// 返回的namespace数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case namespaces = "Namespaces"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 列出命名空间列表
    @inlinable
    public func listNamespaces(_ input: ListNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNamespacesResponse> {
        self.client.execute(action: "ListNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出命名空间列表
    @inlinable
    public func listNamespaces(_ input: ListNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNamespacesResponse {
        try await self.client.execute(action: "ListNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出命名空间列表
    @inlinable
    public func listNamespaces(limit: Int64? = nil, offset: Int64? = nil, orderby: String? = nil, order: String? = nil, searchKey: [SearchKey]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListNamespacesResponse> {
        self.listNamespaces(ListNamespacesRequest(limit: limit, offset: offset, orderby: orderby, order: order, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }

    /// 列出命名空间列表
    @inlinable
    public func listNamespaces(limit: Int64? = nil, offset: Int64? = nil, orderby: String? = nil, order: String? = nil, searchKey: [SearchKey]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListNamespacesResponse {
        try await self.listNamespaces(ListNamespacesRequest(limit: limit, offset: offset, orderby: orderby, order: order, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }
}
