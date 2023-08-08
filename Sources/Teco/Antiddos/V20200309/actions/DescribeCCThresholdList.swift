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

extension Antiddos {
    /// DescribeCCThresholdList请求参数结构体
    public struct DescribeCCThresholdListRequest: TCPaginatedRequest {
        /// DDoS防护子产品代号（bgp-multip表示高防包）
        public let business: String

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数
        public let limit: UInt64

        /// 指定实例Id
        public let instanceId: String?

        public init(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil) {
            self.business = business
            self.offset = offset
            self.limit = limit
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case offset = "Offset"
            case limit = "Limit"
            case instanceId = "InstanceId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCCThresholdListResponse) -> DescribeCCThresholdListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCCThresholdListRequest(business: self.business, offset: self.offset + .init(response.getItems().count), limit: self.limit, instanceId: self.instanceId)
        }
    }

    /// DescribeCCThresholdList返回参数结构体
    public struct DescribeCCThresholdListResponse: TCPaginatedResponse {
        /// 清洗阈值策略列表总数
        public let total: UInt64

        /// 清洗阈值策略列表详情
        public let thresholdList: [CCThresholdPolicy]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case thresholdList = "ThresholdList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CCThresholdPolicy] {
            self.thresholdList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取CC清洗阈值列表
    @inlinable
    public func describeCCThresholdList(_ input: DescribeCCThresholdListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCThresholdListResponse> {
        self.client.execute(action: "DescribeCCThresholdList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC清洗阈值列表
    @inlinable
    public func describeCCThresholdList(_ input: DescribeCCThresholdListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCThresholdListResponse {
        try await self.client.execute(action: "DescribeCCThresholdList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CC清洗阈值列表
    @inlinable
    public func describeCCThresholdList(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCThresholdListResponse> {
        self.describeCCThresholdList(.init(business: business, offset: offset, limit: limit, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC清洗阈值列表
    @inlinable
    public func describeCCThresholdList(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCThresholdListResponse {
        try await self.describeCCThresholdList(.init(business: business, offset: offset, limit: limit, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC清洗阈值列表
    @inlinable
    public func describeCCThresholdListPaginated(_ input: DescribeCCThresholdListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CCThresholdPolicy])> {
        self.client.paginate(input: input, region: region, command: self.describeCCThresholdList, logger: logger, on: eventLoop)
    }

    /// 获取CC清洗阈值列表
    @inlinable @discardableResult
    public func describeCCThresholdListPaginated(_ input: DescribeCCThresholdListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCCThresholdListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCCThresholdList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取CC清洗阈值列表
    ///
    /// - Returns: `AsyncSequence`s of `CCThresholdPolicy` and `DescribeCCThresholdListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCCThresholdListPaginator(_ input: DescribeCCThresholdListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCCThresholdListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCCThresholdList, logger: logger, on: eventLoop)
    }
}
