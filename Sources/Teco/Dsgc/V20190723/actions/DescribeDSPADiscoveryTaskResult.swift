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

extension Dsgc {
    /// DescribeDSPADiscoveryTaskResult请求参数结构体
    public struct DescribeDSPADiscoveryTaskResultRequest: TCPaginatedRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 数据源类型，可取值如下：
        /// cdb 表示云数据库 MySQL,
        /// dcdb 表示TDSQL MySQL版,
        /// mariadb 表示云数据库 MariaDB,
        /// postgres 表示云数据库 PostgreSQL,
        /// cynosdbpg 表示TDSQL-C PostgreSQL版,
        /// cynosdbmysql 表示TDSQL-C MySQL版,
        /// selfbuilt-db 表示自建数据库
        public let dataSourceType: String

        /// 任务ID
        public let taskId: Int64?

        /// 任务名称
        public let taskName: String?

        /// 数据源ID
        public let dataSourceId: String?

        /// 数据库名称
        public let dbName: String?

        /// 偏移量，默认值为0
        public let offset: Int64?

        /// 返回数量，默认值为20，最大值为100
        public let limit: Int64?

        /// 资源所在地域
        public let resourceRegion: String?

        public init(dspaId: String, dataSourceType: String, taskId: Int64? = nil, taskName: String? = nil, dataSourceId: String? = nil, dbName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceRegion: String? = nil) {
            self.dspaId = dspaId
            self.dataSourceType = dataSourceType
            self.taskId = taskId
            self.taskName = taskName
            self.dataSourceId = dataSourceId
            self.dbName = dbName
            self.offset = offset
            self.limit = limit
            self.resourceRegion = resourceRegion
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case dataSourceType = "DataSourceType"
            case taskId = "TaskId"
            case taskName = "TaskName"
            case dataSourceId = "DataSourceId"
            case dbName = "DbName"
            case offset = "Offset"
            case limit = "Limit"
            case resourceRegion = "ResourceRegion"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDSPADiscoveryTaskResultResponse) -> DescribeDSPADiscoveryTaskResultRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(dspaId: self.dspaId, dataSourceType: self.dataSourceType, taskId: self.taskId, taskName: self.taskName, dataSourceId: self.dataSourceId, dbName: self.dbName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, resourceRegion: self.resourceRegion)
        }
    }

    /// DescribeDSPADiscoveryTaskResult返回参数结构体
    public struct DescribeDSPADiscoveryTaskResultResponse: TCPaginatedResponse {
        /// 扫描任务结果项
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [DspaDiscoveryTaskDbResult]?

        /// 符合条件的扫描任务结果记录数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DspaDiscoveryTaskDbResult`` list from the paginated response.
        public func getItems() -> [DspaDiscoveryTaskDbResult] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取分类分级任务执行结果
    ///
    /// 获取分类分级任务结果，该接口只有在任务状态为以下状态时才支持结果正常查询：
    /// 3 扫描成功，
    /// 4 扫描失败
    @inlinable
    public func describeDSPADiscoveryTaskResult(_ input: DescribeDSPADiscoveryTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPADiscoveryTaskResultResponse> {
        self.client.execute(action: "DescribeDSPADiscoveryTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取分类分级任务执行结果
    ///
    /// 获取分类分级任务结果，该接口只有在任务状态为以下状态时才支持结果正常查询：
    /// 3 扫描成功，
    /// 4 扫描失败
    @inlinable
    public func describeDSPADiscoveryTaskResult(_ input: DescribeDSPADiscoveryTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPADiscoveryTaskResultResponse {
        try await self.client.execute(action: "DescribeDSPADiscoveryTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取分类分级任务执行结果
    ///
    /// 获取分类分级任务结果，该接口只有在任务状态为以下状态时才支持结果正常查询：
    /// 3 扫描成功，
    /// 4 扫描失败
    @inlinable
    public func describeDSPADiscoveryTaskResult(dspaId: String, dataSourceType: String, taskId: Int64? = nil, taskName: String? = nil, dataSourceId: String? = nil, dbName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPADiscoveryTaskResultResponse> {
        self.describeDSPADiscoveryTaskResult(.init(dspaId: dspaId, dataSourceType: dataSourceType, taskId: taskId, taskName: taskName, dataSourceId: dataSourceId, dbName: dbName, offset: offset, limit: limit, resourceRegion: resourceRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分类分级任务执行结果
    ///
    /// 获取分类分级任务结果，该接口只有在任务状态为以下状态时才支持结果正常查询：
    /// 3 扫描成功，
    /// 4 扫描失败
    @inlinable
    public func describeDSPADiscoveryTaskResult(dspaId: String, dataSourceType: String, taskId: Int64? = nil, taskName: String? = nil, dataSourceId: String? = nil, dbName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, resourceRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPADiscoveryTaskResultResponse {
        try await self.describeDSPADiscoveryTaskResult(.init(dspaId: dspaId, dataSourceType: dataSourceType, taskId: taskId, taskName: taskName, dataSourceId: dataSourceId, dbName: dbName, offset: offset, limit: limit, resourceRegion: resourceRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分类分级任务执行结果
    ///
    /// 获取分类分级任务结果，该接口只有在任务状态为以下状态时才支持结果正常查询：
    /// 3 扫描成功，
    /// 4 扫描失败
    @inlinable
    public func describeDSPADiscoveryTaskResultPaginated(_ input: DescribeDSPADiscoveryTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DspaDiscoveryTaskDbResult])> {
        self.client.paginate(input: input, region: region, command: self.describeDSPADiscoveryTaskResult, logger: logger, on: eventLoop)
    }

    /// 获取分类分级任务执行结果
    ///
    /// 获取分类分级任务结果，该接口只有在任务状态为以下状态时才支持结果正常查询：
    /// 3 扫描成功，
    /// 4 扫描失败
    @inlinable @discardableResult
    public func describeDSPADiscoveryTaskResultPaginated(_ input: DescribeDSPADiscoveryTaskResultRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDSPADiscoveryTaskResultResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDSPADiscoveryTaskResult, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取分类分级任务执行结果
    ///
    /// 获取分类分级任务结果，该接口只有在任务状态为以下状态时才支持结果正常查询：
    /// 3 扫描成功，
    /// 4 扫描失败
    ///
    /// - Returns: `AsyncSequence`s of ``DspaDiscoveryTaskDbResult`` and ``DescribeDSPADiscoveryTaskResultResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDSPADiscoveryTaskResultPaginator(_ input: DescribeDSPADiscoveryTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDSPADiscoveryTaskResultRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDSPADiscoveryTaskResult, logger: logger, on: eventLoop)
    }
}
