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
import TecoPaginationHelpers

extension Trp {
    /// DescribeMerchants请求参数结构体
    public struct DescribeMerchantsRequest: TCPaginatedRequest {
        /// 搜索商户名称
        public let name: String?

        /// 条数
        public let pageSize: UInt64?

        /// 页数
        public let pageNumber: UInt64?

        /// 企业ID
        public let corpId: UInt64?

        /// 码来源类型 0:自建, 1:第三方
        public let codeType: Int64?

        public init(name: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, corpId: UInt64? = nil, codeType: Int64? = nil) {
            self.name = name
            self.pageSize = pageSize
            self.pageNumber = pageNumber
            self.corpId = corpId
            self.codeType = codeType
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
            case corpId = "CorpId"
            case codeType = "CodeType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMerchantsResponse) -> DescribeMerchantsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMerchantsRequest(name: self.name, pageSize: self.pageSize, pageNumber: (self.pageNumber ?? 0) + 1, corpId: self.corpId, codeType: self.codeType)
        }
    }

    /// DescribeMerchants返回参数结构体
    public struct DescribeMerchantsResponse: TCPaginatedResponse {
        /// 商户列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchants: [Merchant]?

        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case merchants = "Merchants"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Merchant] {
            self.merchants ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询商户列表
    @inlinable
    public func describeMerchants(_ input: DescribeMerchantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMerchantsResponse> {
        self.client.execute(action: "DescribeMerchants", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询商户列表
    @inlinable
    public func describeMerchants(_ input: DescribeMerchantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMerchantsResponse {
        try await self.client.execute(action: "DescribeMerchants", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询商户列表
    @inlinable
    public func describeMerchants(name: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, corpId: UInt64? = nil, codeType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMerchantsResponse> {
        self.describeMerchants(.init(name: name, pageSize: pageSize, pageNumber: pageNumber, corpId: corpId, codeType: codeType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询商户列表
    @inlinable
    public func describeMerchants(name: String? = nil, pageSize: UInt64? = nil, pageNumber: UInt64? = nil, corpId: UInt64? = nil, codeType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMerchantsResponse {
        try await self.describeMerchants(.init(name: name, pageSize: pageSize, pageNumber: pageNumber, corpId: corpId, codeType: codeType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询商户列表
    @inlinable
    public func describeMerchantsPaginated(_ input: DescribeMerchantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Merchant])> {
        self.client.paginate(input: input, region: region, command: self.describeMerchants, logger: logger, on: eventLoop)
    }

    /// 查询商户列表
    @inlinable @discardableResult
    public func describeMerchantsPaginated(_ input: DescribeMerchantsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMerchantsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMerchants, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询商户列表
    ///
    /// - Returns: `AsyncSequence`s of `Merchant` and `DescribeMerchantsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMerchantsPaginator(_ input: DescribeMerchantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMerchantsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMerchants, logger: logger, on: eventLoop)
    }
}
