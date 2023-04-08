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

extension Tdcpg {
    /// DescribeClusterBackups请求参数结构体
    public struct DescribeClusterBackupsRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 页码，取值范围为[1,INF)，默认值为1
        public let pageNumber: Int64?

        /// 每页个数，取值范围为默认为[1,100]，默认值为20
        public let pageSize: Int64?

        public init(clusterId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil) {
            self.clusterId = clusterId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeClusterBackupsResponse) -> DescribeClusterBackupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClusterBackupsRequest(clusterId: self.clusterId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeClusterBackups返回参数结构体
    public struct DescribeClusterBackupsResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: Int64

        /// 备份列表信息
        public let backupSet: [Backup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case backupSet = "BackupSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Backup] {
            self.backupSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询集群的备份集
    @inlinable
    public func describeClusterBackups(_ input: DescribeClusterBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterBackupsResponse> {
        self.client.execute(action: "DescribeClusterBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群的备份集
    @inlinable
    public func describeClusterBackups(_ input: DescribeClusterBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterBackupsResponse {
        try await self.client.execute(action: "DescribeClusterBackups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群的备份集
    @inlinable
    public func describeClusterBackups(clusterId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterBackupsResponse> {
        self.describeClusterBackups(.init(clusterId: clusterId, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群的备份集
    @inlinable
    public func describeClusterBackups(clusterId: String, pageNumber: Int64? = nil, pageSize: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterBackupsResponse {
        try await self.describeClusterBackups(.init(clusterId: clusterId, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询集群的备份集
    @inlinable
    public func describeClusterBackupsPaginated(_ input: DescribeClusterBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Backup])> {
        self.client.paginate(input: input, region: region, command: self.describeClusterBackups, logger: logger, on: eventLoop)
    }

    /// 查询集群的备份集
    @inlinable @discardableResult
    public func describeClusterBackupsPaginated(_ input: DescribeClusterBackupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClusterBackupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusterBackups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群的备份集
    ///
    /// - Returns: `AsyncSequence`s of `Backup` and `DescribeClusterBackupsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeClusterBackupsPaginator(_ input: DescribeClusterBackupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClusterBackupsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClusterBackups, logger: logger, on: eventLoop)
    }
}
