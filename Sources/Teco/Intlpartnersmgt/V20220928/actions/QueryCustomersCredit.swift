//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

import TecoCore

extension Intlpartnersmgt {
    /// QueryCustomersCredit请求参数结构体
    public struct QueryCustomersCreditRequest: TCRequestModel {
        /// 搜索条件类型，只能是：ClientUin|Name|Remark|Email四选一
        public let filterType: String?

        /// 查询条件值
        public let filter: String?

        /// 分页参数：当前页数，从1开始
        public let page: Int64?

        /// 分页参数：每页条数
        public let pageSize: Int64?

        /// 排序参数，根据AssociationTime按照空或者desc：逆序，asc：顺序的方式进行排序
        public let order: String?

        public init(filterType: String? = nil, filter: String? = nil, page: Int64? = nil, pageSize: Int64? = nil, order: String? = nil) {
            self.filterType = filterType
            self.filter = filter
            self.page = page
            self.pageSize = pageSize
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case filterType = "FilterType"
            case filter = "Filter"
            case page = "Page"
            case pageSize = "PageSize"
            case order = "Order"
        }
    }

    /// QueryCustomersCredit返回参数结构体
    public struct QueryCustomersCreditResponse: TCResponseModel {
        /// 查询客户列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [QueryCustomersCreditData]?

        /// 客户数量
        public let total: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 查询客户信用额度
    ///
    /// 合作伙伴可以查询关联客户的信用额度，以及客户的基础信息
    @inlinable
    public func queryCustomersCredit(_ input: QueryCustomersCreditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCustomersCreditResponse> {
        self.client.execute(action: "QueryCustomersCredit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户信用额度
    ///
    /// 合作伙伴可以查询关联客户的信用额度，以及客户的基础信息
    @inlinable
    public func queryCustomersCredit(_ input: QueryCustomersCreditRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCustomersCreditResponse {
        try await self.client.execute(action: "QueryCustomersCredit", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户信用额度
    ///
    /// 合作伙伴可以查询关联客户的信用额度，以及客户的基础信息
    @inlinable
    public func queryCustomersCredit(filterType: String? = nil, filter: String? = nil, page: Int64? = nil, pageSize: Int64? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCustomersCreditResponse> {
        self.queryCustomersCredit(.init(filterType: filterType, filter: filter, page: page, pageSize: pageSize, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户信用额度
    ///
    /// 合作伙伴可以查询关联客户的信用额度，以及客户的基础信息
    @inlinable
    public func queryCustomersCredit(filterType: String? = nil, filter: String? = nil, page: Int64? = nil, pageSize: Int64? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCustomersCreditResponse {
        try await self.queryCustomersCredit(.init(filterType: filterType, filter: filter, page: page, pageSize: pageSize, order: order), region: region, logger: logger, on: eventLoop)
    }
}