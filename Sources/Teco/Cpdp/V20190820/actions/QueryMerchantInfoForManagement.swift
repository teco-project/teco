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

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// QueryMerchantInfoForManagement请求参数结构体
    public struct QueryMerchantInfoForManagementRequest: TCPaginatedRequest {
        /// 开票平台ID
        public let invoicePlatformId: Int64

        /// 页码
        public let offset: Int64

        /// 页大小
        public let limit: Int64

        /// 接入环境。沙箱环境填sandbox。
        public let profile: String?

        public init(invoicePlatformId: Int64, offset: Int64, limit: Int64, profile: String? = nil) {
            self.invoicePlatformId = invoicePlatformId
            self.offset = offset
            self.limit = limit
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case invoicePlatformId = "InvoicePlatformId"
            case offset = "Offset"
            case limit = "Limit"
            case profile = "Profile"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: QueryMerchantInfoForManagementResponse) -> QueryMerchantInfoForManagementRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(invoicePlatformId: self.invoicePlatformId, offset: self.offset + .init(response.getItems().count), limit: self.limit, profile: self.profile)
        }
    }

    /// QueryMerchantInfoForManagement返回参数结构体
    public struct QueryMerchantInfoForManagementResponse: TCPaginatedResponse {
        /// 商户结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: MerchantManagementResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``MerchantManagementList`` list from the paginated response.
        public func getItems() -> [MerchantManagementList] {
            self.result?.list ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.total
        }
    }

    /// 智慧零售-查询管理端商户
    @inlinable
    public func queryMerchantInfoForManagement(_ input: QueryMerchantInfoForManagementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryMerchantInfoForManagementResponse> {
        self.client.execute(action: "QueryMerchantInfoForManagement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智慧零售-查询管理端商户
    @inlinable
    public func queryMerchantInfoForManagement(_ input: QueryMerchantInfoForManagementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMerchantInfoForManagementResponse {
        try await self.client.execute(action: "QueryMerchantInfoForManagement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智慧零售-查询管理端商户
    @inlinable
    public func queryMerchantInfoForManagement(invoicePlatformId: Int64, offset: Int64, limit: Int64, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryMerchantInfoForManagementResponse> {
        self.queryMerchantInfoForManagement(.init(invoicePlatformId: invoicePlatformId, offset: offset, limit: limit, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 智慧零售-查询管理端商户
    @inlinable
    public func queryMerchantInfoForManagement(invoicePlatformId: Int64, offset: Int64, limit: Int64, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryMerchantInfoForManagementResponse {
        try await self.queryMerchantInfoForManagement(.init(invoicePlatformId: invoicePlatformId, offset: offset, limit: limit, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 智慧零售-查询管理端商户
    @inlinable
    public func queryMerchantInfoForManagementPaginated(_ input: QueryMerchantInfoForManagementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MerchantManagementList])> {
        self.client.paginate(input: input, region: region, command: self.queryMerchantInfoForManagement, logger: logger, on: eventLoop)
    }

    /// 智慧零售-查询管理端商户
    @inlinable @discardableResult
    public func queryMerchantInfoForManagementPaginated(_ input: QueryMerchantInfoForManagementRequest, region: TCRegion? = nil, onResponse: @escaping (QueryMerchantInfoForManagementResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.queryMerchantInfoForManagement, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 智慧零售-查询管理端商户
    ///
    /// - Returns: `AsyncSequence`s of ``MerchantManagementList`` and ``QueryMerchantInfoForManagementResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func queryMerchantInfoForManagementPaginator(_ input: QueryMerchantInfoForManagementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<QueryMerchantInfoForManagementRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.queryMerchantInfoForManagement, logger: logger, on: eventLoop)
    }
}
