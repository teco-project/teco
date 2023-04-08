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
import TecoPaginationHelpers

extension Dayu {
    /// DescribeCCSelfDefinePolicy请求参数结构体
    public struct DescribeCCSelfDefinePolicyRequest: TCPaginatedRequest {
        /// 大禹子产品代号（bgp高防包；bgp-multip共享包）
        public let business: String

        /// 资源ID
        public let id: String

        /// 拉取的条数
        public let limit: UInt64?

        /// 偏移量
        public let offset: UInt64?

        public init(business: String, id: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.business = business
            self.id = id
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCCSelfDefinePolicyResponse) -> DescribeCCSelfDefinePolicyRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCCSelfDefinePolicyRequest(business: self.business, id: self.id, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeCCSelfDefinePolicy返回参数结构体
    public struct DescribeCCSelfDefinePolicyResponse: TCPaginatedResponse {
        /// 自定义规则总数
        public let total: UInt64

        /// 策略列表
        public let policys: [CCPolicy]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case policys = "Policys"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CCPolicy] {
            self.policys
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取CC自定义策略
    @inlinable
    public func describeCCSelfDefinePolicy(_ input: DescribeCCSelfDefinePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCSelfDefinePolicyResponse> {
        self.client.execute(action: "DescribeCCSelfDefinePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC自定义策略
    @inlinable
    public func describeCCSelfDefinePolicy(_ input: DescribeCCSelfDefinePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCSelfDefinePolicyResponse {
        try await self.client.execute(action: "DescribeCCSelfDefinePolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CC自定义策略
    @inlinable
    public func describeCCSelfDefinePolicy(business: String, id: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCSelfDefinePolicyResponse> {
        self.describeCCSelfDefinePolicy(.init(business: business, id: id, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC自定义策略
    @inlinable
    public func describeCCSelfDefinePolicy(business: String, id: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCSelfDefinePolicyResponse {
        try await self.describeCCSelfDefinePolicy(.init(business: business, id: id, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC自定义策略
    @inlinable
    public func describeCCSelfDefinePolicyPaginated(_ input: DescribeCCSelfDefinePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CCPolicy])> {
        self.client.paginate(input: input, region: region, command: self.describeCCSelfDefinePolicy, logger: logger, on: eventLoop)
    }

    /// 获取CC自定义策略
    @inlinable @discardableResult
    public func describeCCSelfDefinePolicyPaginated(_ input: DescribeCCSelfDefinePolicyRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCCSelfDefinePolicyResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCCSelfDefinePolicy, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取CC自定义策略
    ///
    /// - Returns: `AsyncSequence`s of `CCPolicy` and `DescribeCCSelfDefinePolicyResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCCSelfDefinePolicyPaginator(_ input: DescribeCCSelfDefinePolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCCSelfDefinePolicyRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCCSelfDefinePolicy, logger: logger, on: eventLoop)
    }
}
