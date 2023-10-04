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
    /// DescribeDSPADiscoveryTaskResultDetail请求参数结构体
    public struct DescribeDSPADiscoveryTaskResultDetailRequest: TCPaginatedRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 任务ID
        public let taskId: Int64

        /// 扫描数据库结果ID
        public let dbResultId: Int64

        /// 合规组ID
        public let complianceId: Int64

        /// 数据库名
        public let dbName: String

        /// 所属数据表名
        public let tableName: String?

        /// 敏感数据分类ID
        public let categoryId: Int64?

        /// 敏感数据分级ID
        public let levelId: Int64?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认值为20，最大值为100
        public let limit: Int64?

        /// 多级分类的分类ID集合
        public let categoryIdList: [Int64]?

        public init(dspaId: String, taskId: Int64, dbResultId: Int64, complianceId: Int64, dbName: String, tableName: String? = nil, categoryId: Int64? = nil, levelId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, categoryIdList: [Int64]? = nil) {
            self.dspaId = dspaId
            self.taskId = taskId
            self.dbResultId = dbResultId
            self.complianceId = complianceId
            self.dbName = dbName
            self.tableName = tableName
            self.categoryId = categoryId
            self.levelId = levelId
            self.offset = offset
            self.limit = limit
            self.categoryIdList = categoryIdList
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case taskId = "TaskId"
            case dbResultId = "DbResultId"
            case complianceId = "ComplianceId"
            case dbName = "DbName"
            case tableName = "TableName"
            case categoryId = "CategoryId"
            case levelId = "LevelId"
            case offset = "Offset"
            case limit = "Limit"
            case categoryIdList = "CategoryIdList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDSPADiscoveryTaskResultDetailResponse) -> DescribeDSPADiscoveryTaskResultDetailRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(dspaId: self.dspaId, taskId: self.taskId, dbResultId: self.dbResultId, complianceId: self.complianceId, dbName: self.dbName, tableName: self.tableName, categoryId: self.categoryId, levelId: self.levelId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, categoryIdList: self.categoryIdList)
        }
    }

    /// DescribeDSPADiscoveryTaskResultDetail返回参数结构体
    public struct DescribeDSPADiscoveryTaskResultDetailResponse: TCPaginatedResponse {
        /// 扫描结果详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [DspaDiscoveryTaskResultDetail]?

        /// 符合条件的扫描结果详情记录数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DspaDiscoveryTaskResultDetail`` list from the paginated response.
        public func getItems() -> [DspaDiscoveryTaskResultDetail] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取分类分级发现任务结果详情
    ///
    /// 获取分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPADiscoveryTaskResultDetail(_ input: DescribeDSPADiscoveryTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPADiscoveryTaskResultDetailResponse> {
        self.client.execute(action: "DescribeDSPADiscoveryTaskResultDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取分类分级发现任务结果详情
    ///
    /// 获取分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPADiscoveryTaskResultDetail(_ input: DescribeDSPADiscoveryTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPADiscoveryTaskResultDetailResponse {
        try await self.client.execute(action: "DescribeDSPADiscoveryTaskResultDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取分类分级发现任务结果详情
    ///
    /// 获取分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPADiscoveryTaskResultDetail(dspaId: String, taskId: Int64, dbResultId: Int64, complianceId: Int64, dbName: String, tableName: String? = nil, categoryId: Int64? = nil, levelId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, categoryIdList: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPADiscoveryTaskResultDetailResponse> {
        self.describeDSPADiscoveryTaskResultDetail(.init(dspaId: dspaId, taskId: taskId, dbResultId: dbResultId, complianceId: complianceId, dbName: dbName, tableName: tableName, categoryId: categoryId, levelId: levelId, offset: offset, limit: limit, categoryIdList: categoryIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分类分级发现任务结果详情
    ///
    /// 获取分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPADiscoveryTaskResultDetail(dspaId: String, taskId: Int64, dbResultId: Int64, complianceId: Int64, dbName: String, tableName: String? = nil, categoryId: Int64? = nil, levelId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, categoryIdList: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPADiscoveryTaskResultDetailResponse {
        try await self.describeDSPADiscoveryTaskResultDetail(.init(dspaId: dspaId, taskId: taskId, dbResultId: dbResultId, complianceId: complianceId, dbName: dbName, tableName: tableName, categoryId: categoryId, levelId: levelId, offset: offset, limit: limit, categoryIdList: categoryIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分类分级发现任务结果详情
    ///
    /// 获取分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPADiscoveryTaskResultDetailPaginated(_ input: DescribeDSPADiscoveryTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DspaDiscoveryTaskResultDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeDSPADiscoveryTaskResultDetail, logger: logger, on: eventLoop)
    }

    /// 获取分类分级发现任务结果详情
    ///
    /// 获取分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable @discardableResult
    public func describeDSPADiscoveryTaskResultDetailPaginated(_ input: DescribeDSPADiscoveryTaskResultDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDSPADiscoveryTaskResultDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDSPADiscoveryTaskResultDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取分类分级发现任务结果详情
    ///
    /// 获取分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    ///
    /// - Returns: `AsyncSequence`s of ``DspaDiscoveryTaskResultDetail`` and ``DescribeDSPADiscoveryTaskResultDetailResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDSPADiscoveryTaskResultDetailPaginator(_ input: DescribeDSPADiscoveryTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDSPADiscoveryTaskResultDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDSPADiscoveryTaskResultDetail, logger: logger, on: eventLoop)
    }
}
