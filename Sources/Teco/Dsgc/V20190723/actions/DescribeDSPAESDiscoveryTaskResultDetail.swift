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
    /// DescribeDSPAESDiscoveryTaskResultDetail请求参数结构体
    public struct DescribeDSPAESDiscoveryTaskResultDetailRequest: TCPaginatedRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 任务ID
        public let taskId: Int64

        /// 合规组ID
        public let complianceId: Int64

        /// 偏移量，默认为0
        public let offset: Int64

        /// 返回数量，默认值为20，最大值为100
        public let limit: Int64

        /// 多级分类的分类ID集合
        public let categoryIdList: [Int64]?

        /// 敏感数据分级ID
        public let levelId: Int64?

        /// 索引名称
        public let dbName: String?

        public init(dspaId: String, taskId: Int64, complianceId: Int64, offset: Int64, limit: Int64, categoryIdList: [Int64]? = nil, levelId: Int64? = nil, dbName: String? = nil) {
            self.dspaId = dspaId
            self.taskId = taskId
            self.complianceId = complianceId
            self.offset = offset
            self.limit = limit
            self.categoryIdList = categoryIdList
            self.levelId = levelId
            self.dbName = dbName
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case taskId = "TaskId"
            case complianceId = "ComplianceId"
            case offset = "Offset"
            case limit = "Limit"
            case categoryIdList = "CategoryIdList"
            case levelId = "LevelId"
            case dbName = "DbName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDSPAESDiscoveryTaskResultDetailResponse) -> DescribeDSPAESDiscoveryTaskResultDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(dspaId: self.dspaId, taskId: self.taskId, complianceId: self.complianceId, offset: self.offset + .init(response.getItems().count), limit: self.limit, categoryIdList: self.categoryIdList, levelId: self.levelId, dbName: self.dbName)
        }
    }

    /// DescribeDSPAESDiscoveryTaskResultDetail返回参数结构体
    public struct DescribeDSPAESDiscoveryTaskResultDetailResponse: TCPaginatedResponse {
        /// ES扫描结果详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [ESTaskResultDetail]?

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

        /// Extract the returned ``ESTaskResultDetail`` list from the paginated response.
        public func getItems() -> [ESTaskResultDetail] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取ES的分类分级发现任务结果详情
    ///
    /// 获取ES的分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPAESDiscoveryTaskResultDetail(_ input: DescribeDSPAESDiscoveryTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAESDiscoveryTaskResultDetailResponse> {
        self.client.execute(action: "DescribeDSPAESDiscoveryTaskResultDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取ES的分类分级发现任务结果详情
    ///
    /// 获取ES的分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPAESDiscoveryTaskResultDetail(_ input: DescribeDSPAESDiscoveryTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAESDiscoveryTaskResultDetailResponse {
        try await self.client.execute(action: "DescribeDSPAESDiscoveryTaskResultDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取ES的分类分级发现任务结果详情
    ///
    /// 获取ES的分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPAESDiscoveryTaskResultDetail(dspaId: String, taskId: Int64, complianceId: Int64, offset: Int64, limit: Int64, categoryIdList: [Int64]? = nil, levelId: Int64? = nil, dbName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPAESDiscoveryTaskResultDetailResponse> {
        self.describeDSPAESDiscoveryTaskResultDetail(.init(dspaId: dspaId, taskId: taskId, complianceId: complianceId, offset: offset, limit: limit, categoryIdList: categoryIdList, levelId: levelId, dbName: dbName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取ES的分类分级发现任务结果详情
    ///
    /// 获取ES的分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPAESDiscoveryTaskResultDetail(dspaId: String, taskId: Int64, complianceId: Int64, offset: Int64, limit: Int64, categoryIdList: [Int64]? = nil, levelId: Int64? = nil, dbName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPAESDiscoveryTaskResultDetailResponse {
        try await self.describeDSPAESDiscoveryTaskResultDetail(.init(dspaId: dspaId, taskId: taskId, complianceId: complianceId, offset: offset, limit: limit, categoryIdList: categoryIdList, levelId: levelId, dbName: dbName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取ES的分类分级发现任务结果详情
    ///
    /// 获取ES的分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPAESDiscoveryTaskResultDetailPaginated(_ input: DescribeDSPAESDiscoveryTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ESTaskResultDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeDSPAESDiscoveryTaskResultDetail, logger: logger, on: eventLoop)
    }

    /// 获取ES的分类分级发现任务结果详情
    ///
    /// 获取ES的分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable @discardableResult
    public func describeDSPAESDiscoveryTaskResultDetailPaginated(_ input: DescribeDSPAESDiscoveryTaskResultDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDSPAESDiscoveryTaskResultDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDSPAESDiscoveryTaskResultDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取ES的分类分级发现任务结果详情
    ///
    /// 获取ES的分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    ///
    /// - Returns: `AsyncSequence`s of ``ESTaskResultDetail`` and ``DescribeDSPAESDiscoveryTaskResultDetailResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDSPAESDiscoveryTaskResultDetailPaginator(_ input: DescribeDSPAESDiscoveryTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDSPAESDiscoveryTaskResultDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDSPAESDiscoveryTaskResultDetail, logger: logger, on: eventLoop)
    }
}