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
        public func getNextPaginatedRequest(with response: DescribeIdlFileInfosResponse) -> DescribeIdlFileInfosRequest? {
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

        /// Extract the returned item list from the paginated response.
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
        let input = DescribeIdlFileInfosRequest(clusterId: clusterId, tableGroupIds: tableGroupIds, idlFileIds: idlFileIds, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeIdlFileInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询表描述文件详情
    @inlinable
    public func describeIdlFileInfos(clusterId: String, tableGroupIds: [String]? = nil, idlFileIds: [String]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIdlFileInfosResponse {
        let input = DescribeIdlFileInfosRequest(clusterId: clusterId, tableGroupIds: tableGroupIds, idlFileIds: idlFileIds, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeIdlFileInfos", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
