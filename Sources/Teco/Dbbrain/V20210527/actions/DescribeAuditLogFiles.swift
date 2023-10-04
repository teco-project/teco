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

extension Dbbrain {
    /// DescribeAuditLogFiles请求参数结构体
    public struct DescribeAuditLogFilesRequest: TCPaginatedRequest {
        /// 服务产品类型，支持值包括： "dcdb" - 云数据库 Tdsql， "mariadb" - 云数据库 MariaDB for MariaDB。
        public let product: String

        /// 与Product保持一致。如："dcdb" ,"mariadb"
        public let nodeRequestType: String

        /// 实例 ID 。
        public let instanceId: String

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 查询数目，默认为20，最大为100。
        public let limit: Int64?

        public init(product: String, nodeRequestType: String, instanceId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.product = product
            self.nodeRequestType = nodeRequestType
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case product = "Product"
            case nodeRequestType = "NodeRequestType"
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeAuditLogFilesResponse) -> DescribeAuditLogFilesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(product: self.product, nodeRequestType: self.nodeRequestType, instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeAuditLogFiles返回参数结构体
    public struct DescribeAuditLogFilesResponse: TCPaginatedResponse {
        /// 符合条件的审计日志文件个数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 审计日志文件详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [AuditLogFile]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned ``AuditLogFile`` list from the paginated response.
        public func getItems() -> [AuditLogFile] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询审计日志文件
    ///
    /// 用于创建云数据库实例的审计日志文件
    @inlinable
    public func describeAuditLogFiles(_ input: DescribeAuditLogFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditLogFilesResponse> {
        self.client.execute(action: "DescribeAuditLogFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询审计日志文件
    ///
    /// 用于创建云数据库实例的审计日志文件
    @inlinable
    public func describeAuditLogFiles(_ input: DescribeAuditLogFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditLogFilesResponse {
        try await self.client.execute(action: "DescribeAuditLogFiles", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询审计日志文件
    ///
    /// 用于创建云数据库实例的审计日志文件
    @inlinable
    public func describeAuditLogFiles(product: String, nodeRequestType: String, instanceId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditLogFilesResponse> {
        self.describeAuditLogFiles(.init(product: product, nodeRequestType: nodeRequestType, instanceId: instanceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询审计日志文件
    ///
    /// 用于创建云数据库实例的审计日志文件
    @inlinable
    public func describeAuditLogFiles(product: String, nodeRequestType: String, instanceId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditLogFilesResponse {
        try await self.describeAuditLogFiles(.init(product: product, nodeRequestType: nodeRequestType, instanceId: instanceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询审计日志文件
    ///
    /// 用于创建云数据库实例的审计日志文件
    @inlinable
    public func describeAuditLogFilesPaginated(_ input: DescribeAuditLogFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AuditLogFile])> {
        self.client.paginate(input: input, region: region, command: self.describeAuditLogFiles, logger: logger, on: eventLoop)
    }

    /// 查询审计日志文件
    ///
    /// 用于创建云数据库实例的审计日志文件
    @inlinable @discardableResult
    public func describeAuditLogFilesPaginated(_ input: DescribeAuditLogFilesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAuditLogFilesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAuditLogFiles, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询审计日志文件
    ///
    /// 用于创建云数据库实例的审计日志文件
    ///
    /// - Returns: `AsyncSequence`s of ``AuditLogFile`` and ``DescribeAuditLogFilesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAuditLogFilesPaginator(_ input: DescribeAuditLogFilesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAuditLogFilesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAuditLogFiles, logger: logger, on: eventLoop)
    }
}
