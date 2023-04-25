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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Ccc {
    /// DescribeIMCdrs请求参数结构体
    public struct DescribeIMCdrsRequest: TCPaginatedRequest {
        /// 起始时间（必填），Unix 秒级时间戳
        public let startTimestamp: Int64

        /// 结束时间（必填），Unix 秒级时间戳
        public let endTimestamp: Int64

        /// 实例 ID（废弃）
        public let instanceId: Int64?

        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64?

        /// 返回记录条数，最大为100默认20
        public let limit: Int64?

        /// 返回记录偏移，默认为 0
        public let offset: Int64?

        /// 1为全媒体，2为文本客服，不填则查询全部
        public let type: Int64?

        public init(startTimestamp: Int64, endTimestamp: Int64, instanceId: Int64? = nil, sdkAppId: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, type: Int64? = nil) {
            self.startTimestamp = startTimestamp
            self.endTimestamp = endTimestamp
            self.instanceId = instanceId
            self.sdkAppId = sdkAppId
            self.limit = limit
            self.offset = offset
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case startTimestamp = "StartTimestamp"
            case endTimestamp = "EndTimestamp"
            case instanceId = "InstanceId"
            case sdkAppId = "SdkAppId"
            case limit = "Limit"
            case offset = "Offset"
            case type = "Type"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeIMCdrsResponse) -> DescribeIMCdrsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeIMCdrsRequest(startTimestamp: self.startTimestamp, endTimestamp: self.endTimestamp, instanceId: self.instanceId, sdkAppId: self.sdkAppId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), type: self.type)
        }
    }

    /// DescribeIMCdrs返回参数结构体
    public struct DescribeIMCdrsResponse: TCPaginatedResponse {
        /// 总记录数
        public let totalCount: Int64

        /// 服务记录列表
        public let imCdrs: [IMCdrInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case imCdrs = "IMCdrs"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [IMCdrInfo] {
            self.imCdrs
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询在线客服记录
    ///
    /// 获取包括全媒体和文本会话两种类型的服务记录。
    @inlinable
    public func describeIMCdrs(_ input: DescribeIMCdrsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIMCdrsResponse> {
        self.client.execute(action: "DescribeIMCdrs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询在线客服记录
    ///
    /// 获取包括全媒体和文本会话两种类型的服务记录。
    @inlinable
    public func describeIMCdrs(_ input: DescribeIMCdrsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIMCdrsResponse {
        try await self.client.execute(action: "DescribeIMCdrs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询在线客服记录
    ///
    /// 获取包括全媒体和文本会话两种类型的服务记录。
    @inlinable
    public func describeIMCdrs(startTimestamp: Int64, endTimestamp: Int64, instanceId: Int64? = nil, sdkAppId: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, type: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIMCdrsResponse> {
        self.describeIMCdrs(.init(startTimestamp: startTimestamp, endTimestamp: endTimestamp, instanceId: instanceId, sdkAppId: sdkAppId, limit: limit, offset: offset, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 查询在线客服记录
    ///
    /// 获取包括全媒体和文本会话两种类型的服务记录。
    @inlinable
    public func describeIMCdrs(startTimestamp: Int64, endTimestamp: Int64, instanceId: Int64? = nil, sdkAppId: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, type: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIMCdrsResponse {
        try await self.describeIMCdrs(.init(startTimestamp: startTimestamp, endTimestamp: endTimestamp, instanceId: instanceId, sdkAppId: sdkAppId, limit: limit, offset: offset, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 查询在线客服记录
    ///
    /// 获取包括全媒体和文本会话两种类型的服务记录。
    @inlinable
    public func describeIMCdrsPaginated(_ input: DescribeIMCdrsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [IMCdrInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeIMCdrs, logger: logger, on: eventLoop)
    }

    /// 查询在线客服记录
    ///
    /// 获取包括全媒体和文本会话两种类型的服务记录。
    @inlinable @discardableResult
    public func describeIMCdrsPaginated(_ input: DescribeIMCdrsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIMCdrsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIMCdrs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询在线客服记录
    ///
    /// 获取包括全媒体和文本会话两种类型的服务记录。
    ///
    /// - Returns: `AsyncSequence`s of `IMCdrInfo` and `DescribeIMCdrsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIMCdrsPaginator(_ input: DescribeIMCdrsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIMCdrsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIMCdrs, logger: logger, on: eventLoop)
    }
}
