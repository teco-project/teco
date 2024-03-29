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

extension Yunjing {
    /// DescribeOpenPorts请求参数结构体
    public struct DescribeOpenPortsRequest: TCPaginatedRequest {
        /// 云镜客户端唯一Uuid。Port和Uuid必填其一，使用Uuid表示，查询该主机列表信息。
        public let uuid: String?

        /// 开放端口号。Port和Uuid必填其一，使用Port表示查询该端口的列表信息。
        public let port: UInt64?

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Port - Uint64 - 是否必填：否 - 端口号
        /// - ProcessName - String - 是否必填：否 - 进程名
        /// - MachineIp - String - 是否必填：否 - 主机内网IP
        public let filters: [Filter]?

        public init(uuid: String? = nil, port: UInt64? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.uuid = uuid
            self.port = port
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case port = "Port"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeOpenPortsResponse) -> DescribeOpenPortsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(uuid: self.uuid, port: self.port, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeOpenPorts返回参数结构体
    public struct DescribeOpenPortsResponse: TCPaginatedResponse {
        /// 端口列表记录总数。
        public let totalCount: UInt64

        /// 端口列表。
        public let openPorts: [OpenPort]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case openPorts = "OpenPorts"
            case requestId = "RequestId"
        }

        /// Extract the returned ``OpenPort`` list from the paginated response.
        public func getItems() -> [OpenPort] {
            self.openPorts
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取端口列表
    ///
    /// 本接口 (DescribeOpenPorts) 用于获取端口列表数据。
    @inlinable
    public func describeOpenPorts(_ input: DescribeOpenPortsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOpenPortsResponse> {
        self.client.execute(action: "DescribeOpenPorts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取端口列表
    ///
    /// 本接口 (DescribeOpenPorts) 用于获取端口列表数据。
    @inlinable
    public func describeOpenPorts(_ input: DescribeOpenPortsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOpenPortsResponse {
        try await self.client.execute(action: "DescribeOpenPorts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取端口列表
    ///
    /// 本接口 (DescribeOpenPorts) 用于获取端口列表数据。
    @inlinable
    public func describeOpenPorts(uuid: String? = nil, port: UInt64? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOpenPortsResponse> {
        self.describeOpenPorts(.init(uuid: uuid, port: port, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取端口列表
    ///
    /// 本接口 (DescribeOpenPorts) 用于获取端口列表数据。
    @inlinable
    public func describeOpenPorts(uuid: String? = nil, port: UInt64? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOpenPortsResponse {
        try await self.describeOpenPorts(.init(uuid: uuid, port: port, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取端口列表
    ///
    /// 本接口 (DescribeOpenPorts) 用于获取端口列表数据。
    @inlinable
    public func describeOpenPortsPaginated(_ input: DescribeOpenPortsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [OpenPort])> {
        self.client.paginate(input: input, region: region, command: self.describeOpenPorts, logger: logger, on: eventLoop)
    }

    /// 获取端口列表
    ///
    /// 本接口 (DescribeOpenPorts) 用于获取端口列表数据。
    @inlinable @discardableResult
    public func describeOpenPortsPaginated(_ input: DescribeOpenPortsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeOpenPortsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeOpenPorts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取端口列表
    ///
    /// 本接口 (DescribeOpenPorts) 用于获取端口列表数据。
    ///
    /// - Returns: `AsyncSequence`s of ``OpenPort`` and ``DescribeOpenPortsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeOpenPortsPaginator(_ input: DescribeOpenPortsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeOpenPortsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeOpenPorts, logger: logger, on: eventLoop)
    }
}
