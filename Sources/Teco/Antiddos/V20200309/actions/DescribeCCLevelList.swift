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

extension Antiddos {
    /// DescribeCCLevelList请求参数结构体
    public struct DescribeCCLevelListRequest: TCPaginatedRequest {
        /// 大禹子产品代号（bgp-multip表示高防包）
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
        public func makeNextRequest(with response: DescribeCCLevelListResponse) -> DescribeCCLevelListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCCLevelListRequest(business: self.business, offset: self.offset + .init(response.getItems().count), limit: self.limit, instanceId: self.instanceId)
        }
    }

    /// DescribeCCLevelList返回参数结构体
    public struct DescribeCCLevelListResponse: TCPaginatedResponse {
        /// 分级策略列表总数
        public let total: UInt64

        /// 分级策略列表总数
        public let levelList: [CCLevelPolicy]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case levelList = "LevelList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CCLevelPolicy] {
            self.levelList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取CC防护等级列表
    ///
    /// 获取边界防护CC防护等级列表
    @inlinable
    public func describeCCLevelList(_ input: DescribeCCLevelListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCLevelListResponse> {
        self.client.execute(action: "DescribeCCLevelList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取CC防护等级列表
    ///
    /// 获取边界防护CC防护等级列表
    @inlinable
    public func describeCCLevelList(_ input: DescribeCCLevelListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCLevelListResponse {
        try await self.client.execute(action: "DescribeCCLevelList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取CC防护等级列表
    ///
    /// 获取边界防护CC防护等级列表
    @inlinable
    public func describeCCLevelList(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCCLevelListResponse> {
        self.describeCCLevelList(.init(business: business, offset: offset, limit: limit, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC防护等级列表
    ///
    /// 获取边界防护CC防护等级列表
    @inlinable
    public func describeCCLevelList(business: String, offset: UInt64, limit: UInt64, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCCLevelListResponse {
        try await self.describeCCLevelList(.init(business: business, offset: offset, limit: limit, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取CC防护等级列表
    ///
    /// 获取边界防护CC防护等级列表
    @inlinable
    public func describeCCLevelListPaginated(_ input: DescribeCCLevelListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CCLevelPolicy])> {
        self.client.paginate(input: input, region: region, command: self.describeCCLevelList, logger: logger, on: eventLoop)
    }

    /// 获取CC防护等级列表
    ///
    /// 获取边界防护CC防护等级列表
    @inlinable @discardableResult
    public func describeCCLevelListPaginated(_ input: DescribeCCLevelListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCCLevelListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCCLevelList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取CC防护等级列表
    ///
    /// 获取边界防护CC防护等级列表
    ///
    /// - Returns: `AsyncSequence`s of `CCLevelPolicy` and `DescribeCCLevelListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCCLevelListPaginator(_ input: DescribeCCLevelListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCCLevelListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCCLevelList, logger: logger, on: eventLoop)
    }
}
