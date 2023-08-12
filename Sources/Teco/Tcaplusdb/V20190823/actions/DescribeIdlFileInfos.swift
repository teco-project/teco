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

extension Tcaplusdb {
    /// DescribeIdlFileInfos请求参数结构体
    public struct DescribeIdlFileInfosRequest: TCPaginatedRequest {
        /// 文件所属集群ID
        public let clusterId: String

        /// 文件所属表格组ID
        public let tableGroupIds: [String]?

        /// 指定文件ID列表
        public let idlFileIds: [String]?

        /// 查询列表偏移量
        public let offset: Int64?

        /// 查询列表返回记录数
        public let limit: Int64?

        public init(clusterId: String, tableGroupIds: [String]? = nil, idlFileIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.clusterId = clusterId
            self.tableGroupIds = tableGroupIds
            self.idlFileIds = idlFileIds
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case tableGroupIds = "TableGroupIds"
            case idlFileIds = "IdlFileIds"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeIdlFileInfosResponse) -> DescribeIdlFileInfosRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeIdlFileInfosRequest(clusterId: self.clusterId, tableGroupIds: self.tableGroupIds, idlFileIds: self.idlFileIds, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeIdlFileInfos返回参数结构体
    public struct DescribeIdlFileInfosResponse: TCPaginatedResponse {
        /// 文件数量
        public let totalCount: UInt64

        /// 文件详情列表
        public let idlFileInfos: [IdlFileInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case idlFileInfos = "IdlFileInfos"
            case requestId = "RequestId"
        }

        /// Extract the returned ``IdlFileInfo`` list from the paginated response.
        public func getItems() -> [IdlFileInfo] {
            self.idlFileInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询表描述文件详情
    @inlinable
    public func describeIdlFileInfos(_ input: DescribeIdlFileInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIdlFileInfosResponse> {
        self.client.execute(action: "DescribeIdlFileInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询表描述文件详情
    @inlinable
    public func describeIdlFileInfos(_ input: DescribeIdlFileInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIdlFileInfosResponse {
        try await self.client.execute(action: "DescribeIdlFileInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询表描述文件详情
    @inlinable
    public func describeIdlFileInfos(clusterId: String, tableGroupIds: [String]? = nil, idlFileIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIdlFileInfosResponse> {
        self.describeIdlFileInfos(.init(clusterId: clusterId, tableGroupIds: tableGroupIds, idlFileIds: idlFileIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询表描述文件详情
    @inlinable
    public func describeIdlFileInfos(clusterId: String, tableGroupIds: [String]? = nil, idlFileIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIdlFileInfosResponse {
        try await self.describeIdlFileInfos(.init(clusterId: clusterId, tableGroupIds: tableGroupIds, idlFileIds: idlFileIds, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询表描述文件详情
    @inlinable
    public func describeIdlFileInfosPaginated(_ input: DescribeIdlFileInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [IdlFileInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeIdlFileInfos, logger: logger, on: eventLoop)
    }

    /// 查询表描述文件详情
    @inlinable @discardableResult
    public func describeIdlFileInfosPaginated(_ input: DescribeIdlFileInfosRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIdlFileInfosResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIdlFileInfos, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询表描述文件详情
    ///
    /// - Returns: `AsyncSequence`s of `IdlFileInfo` and `DescribeIdlFileInfosResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIdlFileInfosPaginator(_ input: DescribeIdlFileInfosRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIdlFileInfosRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIdlFileInfos, logger: logger, on: eventLoop)
    }
}
