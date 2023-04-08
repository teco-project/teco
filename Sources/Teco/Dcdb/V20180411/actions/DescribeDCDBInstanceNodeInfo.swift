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

extension Dcdb {
    /// DescribeDCDBInstanceNodeInfo请求参数结构体
    public struct DescribeDCDBInstanceNodeInfoRequest: TCPaginatedRequest {
        /// 实例ID
        public let instanceId: String

        /// 单次最多返回多少条，取值范围为(0-100]，默认为100
        public let limit: UInt64?

        /// 返回数据的偏移值，默认为0
        public let offset: UInt64?

        public init(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDCDBInstanceNodeInfoResponse) -> DescribeDCDBInstanceNodeInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDCDBInstanceNodeInfoRequest(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeDCDBInstanceNodeInfo返回参数结构体
    public struct DescribeDCDBInstanceNodeInfoResponse: TCPaginatedResponse {
        /// 节点总个数
        public let totalCount: UInt64

        /// 节点信息
        public let nodesInfo: [BriefNodeInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case nodesInfo = "NodesInfo"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BriefNodeInfo] {
            self.nodesInfo
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeDCDBInstanceNodeInfo）用于获取实例节点信息
    @inlinable
    public func describeDCDBInstanceNodeInfo(_ input: DescribeDCDBInstanceNodeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBInstanceNodeInfoResponse> {
        self.client.execute(action: "DescribeDCDBInstanceNodeInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeDCDBInstanceNodeInfo）用于获取实例节点信息
    @inlinable
    public func describeDCDBInstanceNodeInfo(_ input: DescribeDCDBInstanceNodeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBInstanceNodeInfoResponse {
        try await self.client.execute(action: "DescribeDCDBInstanceNodeInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeDCDBInstanceNodeInfo）用于获取实例节点信息
    @inlinable
    public func describeDCDBInstanceNodeInfo(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDCDBInstanceNodeInfoResponse> {
        self.describeDCDBInstanceNodeInfo(.init(instanceId: instanceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeDCDBInstanceNodeInfo）用于获取实例节点信息
    @inlinable
    public func describeDCDBInstanceNodeInfo(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDCDBInstanceNodeInfoResponse {
        try await self.describeDCDBInstanceNodeInfo(.init(instanceId: instanceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeDCDBInstanceNodeInfo）用于获取实例节点信息
    @inlinable
    public func describeDCDBInstanceNodeInfoPaginated(_ input: DescribeDCDBInstanceNodeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BriefNodeInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDCDBInstanceNodeInfo, logger: logger, on: eventLoop)
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeDCDBInstanceNodeInfo）用于获取实例节点信息
    @inlinable @discardableResult
    public func describeDCDBInstanceNodeInfoPaginated(_ input: DescribeDCDBInstanceNodeInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDCDBInstanceNodeInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDCDBInstanceNodeInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取实例节点信息
    ///
    /// 本接口（DescribeDCDBInstanceNodeInfo）用于获取实例节点信息
    ///
    /// - Returns: `AsyncSequence`s of `BriefNodeInfo` and `DescribeDCDBInstanceNodeInfoResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDCDBInstanceNodeInfoPaginator(_ input: DescribeDCDBInstanceNodeInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDCDBInstanceNodeInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDCDBInstanceNodeInfo, logger: logger, on: eventLoop)
    }
}
