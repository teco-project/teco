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

extension Cynosdb {
    /// DescribeAuditLogFiles请求参数结构体
    public struct DescribeAuditLogFilesRequest: TCPaginatedRequest {
        /// 实例ID
        public let instanceId: String

        /// 分页大小参数。默认值为 20，最小值为 1，最大值为 100。
        public let limit: Int64?

        /// 分页偏移量。
        public let offset: Int64?

        /// 审计日志文件名。
        public let fileName: String?

        public init(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, fileName: String? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.fileName = fileName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case fileName = "FileName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAuditLogFilesResponse) -> DescribeAuditLogFilesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), fileName: self.fileName)
        }
    }

    /// DescribeAuditLogFiles返回参数结构体
    public struct DescribeAuditLogFilesResponse: TCPaginatedResponse {
        /// 符合条件的审计日志文件个数。
        public let totalCount: Int64

        /// 审计日志文件详情。
        public let items: [AuditLogFile]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AuditLogFile`` list from the paginated response.
        public func getItems() -> [AuditLogFile] {
            self.items
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询审计日志文件
    ///
    /// 本接口(DescribeAuditLogFiles)用于查询云数据库实例的审计日志文件。
    @inlinable
    public func describeAuditLogFiles(_ input: DescribeAuditLogFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditLogFilesResponse> {
        self.client.execute(action: "DescribeAuditLogFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询审计日志文件
    ///
    /// 本接口(DescribeAuditLogFiles)用于查询云数据库实例的审计日志文件。
    @inlinable
    public func describeAuditLogFiles(_ input: DescribeAuditLogFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditLogFilesResponse {
        try await self.client.execute(action: "DescribeAuditLogFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询审计日志文件
    ///
    /// 本接口(DescribeAuditLogFiles)用于查询云数据库实例的审计日志文件。
    @inlinable
    public func describeAuditLogFiles(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, fileName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditLogFilesResponse> {
        self.describeAuditLogFiles(.init(instanceId: instanceId, limit: limit, offset: offset, fileName: fileName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询审计日志文件
    ///
    /// 本接口(DescribeAuditLogFiles)用于查询云数据库实例的审计日志文件。
    @inlinable
    public func describeAuditLogFiles(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, fileName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditLogFilesResponse {
        try await self.describeAuditLogFiles(.init(instanceId: instanceId, limit: limit, offset: offset, fileName: fileName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询审计日志文件
    ///
    /// 本接口(DescribeAuditLogFiles)用于查询云数据库实例的审计日志文件。
    @inlinable
    public func describeAuditLogFilesPaginated(_ input: DescribeAuditLogFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AuditLogFile])> {
        self.client.paginate(input: input, region: region, command: self.describeAuditLogFiles, logger: logger, on: eventLoop)
    }

    /// 查询审计日志文件
    ///
    /// 本接口(DescribeAuditLogFiles)用于查询云数据库实例的审计日志文件。
    @inlinable @discardableResult
    public func describeAuditLogFilesPaginated(_ input: DescribeAuditLogFilesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAuditLogFilesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAuditLogFiles, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询审计日志文件
    ///
    /// 本接口(DescribeAuditLogFiles)用于查询云数据库实例的审计日志文件。
    ///
    /// - Returns: `AsyncSequence`s of ``AuditLogFile`` and ``DescribeAuditLogFilesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAuditLogFilesPaginator(_ input: DescribeAuditLogFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAuditLogFilesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAuditLogFiles, logger: logger, on: eventLoop)
    }
}
