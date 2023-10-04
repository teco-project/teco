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
    /// DescribeDSPACOSTaskResultDetail请求参数结构体
    public struct DescribeDSPACOSTaskResultDetailRequest: TCPaginatedRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 任务ID
        public let taskId: Int64

        /// 扫描Bucket结果ID
        public let bucketResultId: Int64

        /// 合规组ID
        public let complianceId: Int64

        /// 文件名
        public let fileName: String?

        /// 敏感数据分类ID
        public let categoryId: Int64?

        /// 敏感数据分级ID
        public let levelId: Int64?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认值为20，最大值为100
        public let limit: Int64?

        /// 扫描桶名称。
        public let bucketName: String?

        /// 多级分类的分类ID集合
        public let categoryIdList: [Int64]?

        public init(dspaId: String, taskId: Int64, bucketResultId: Int64, complianceId: Int64, fileName: String? = nil, categoryId: Int64? = nil, levelId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, bucketName: String? = nil, categoryIdList: [Int64]? = nil) {
            self.dspaId = dspaId
            self.taskId = taskId
            self.bucketResultId = bucketResultId
            self.complianceId = complianceId
            self.fileName = fileName
            self.categoryId = categoryId
            self.levelId = levelId
            self.offset = offset
            self.limit = limit
            self.bucketName = bucketName
            self.categoryIdList = categoryIdList
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case taskId = "TaskId"
            case bucketResultId = "BucketResultId"
            case complianceId = "ComplianceId"
            case fileName = "FileName"
            case categoryId = "CategoryId"
            case levelId = "LevelId"
            case offset = "Offset"
            case limit = "Limit"
            case bucketName = "BucketName"
            case categoryIdList = "CategoryIdList"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDSPACOSTaskResultDetailResponse) -> DescribeDSPACOSTaskResultDetailRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(dspaId: self.dspaId, taskId: self.taskId, bucketResultId: self.bucketResultId, complianceId: self.complianceId, fileName: self.fileName, categoryId: self.categoryId, levelId: self.levelId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, bucketName: self.bucketName, categoryIdList: self.categoryIdList)
        }
    }

    /// DescribeDSPACOSTaskResultDetail返回参数结构体
    public struct DescribeDSPACOSTaskResultDetailResponse: TCPaginatedResponse {
        /// 扫描结果详情列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [DspaDiscoveryCOSTaskResultDetail]?

        /// 符合条件的详情数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DspaDiscoveryCOSTaskResultDetail`` list from the paginated response.
        public func getItems() -> [DspaDiscoveryCOSTaskResultDetail] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取COS分类分级任务结果详情
    ///
    /// 获取COS分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPACOSTaskResultDetail(_ input: DescribeDSPACOSTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPACOSTaskResultDetailResponse> {
        self.client.execute(action: "DescribeDSPACOSTaskResultDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取COS分类分级任务结果详情
    ///
    /// 获取COS分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPACOSTaskResultDetail(_ input: DescribeDSPACOSTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPACOSTaskResultDetailResponse {
        try await self.client.execute(action: "DescribeDSPACOSTaskResultDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取COS分类分级任务结果详情
    ///
    /// 获取COS分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPACOSTaskResultDetail(dspaId: String, taskId: Int64, bucketResultId: Int64, complianceId: Int64, fileName: String? = nil, categoryId: Int64? = nil, levelId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, bucketName: String? = nil, categoryIdList: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPACOSTaskResultDetailResponse> {
        self.describeDSPACOSTaskResultDetail(.init(dspaId: dspaId, taskId: taskId, bucketResultId: bucketResultId, complianceId: complianceId, fileName: fileName, categoryId: categoryId, levelId: levelId, offset: offset, limit: limit, bucketName: bucketName, categoryIdList: categoryIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取COS分类分级任务结果详情
    ///
    /// 获取COS分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPACOSTaskResultDetail(dspaId: String, taskId: Int64, bucketResultId: Int64, complianceId: Int64, fileName: String? = nil, categoryId: Int64? = nil, levelId: Int64? = nil, offset: Int64? = nil, limit: Int64? = nil, bucketName: String? = nil, categoryIdList: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPACOSTaskResultDetailResponse {
        try await self.describeDSPACOSTaskResultDetail(.init(dspaId: dspaId, taskId: taskId, bucketResultId: bucketResultId, complianceId: complianceId, fileName: fileName, categoryId: categoryId, levelId: levelId, offset: offset, limit: limit, bucketName: bucketName, categoryIdList: categoryIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 获取COS分类分级任务结果详情
    ///
    /// 获取COS分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable
    public func describeDSPACOSTaskResultDetailPaginated(_ input: DescribeDSPACOSTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DspaDiscoveryCOSTaskResultDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeDSPACOSTaskResultDetail, logger: logger, on: eventLoop)
    }

    /// 获取COS分类分级任务结果详情
    ///
    /// 获取COS分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    @inlinable @discardableResult
    public func describeDSPACOSTaskResultDetailPaginated(_ input: DescribeDSPACOSTaskResultDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDSPACOSTaskResultDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDSPACOSTaskResultDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取COS分类分级任务结果详情
    ///
    /// 获取COS分类分级任务结果详情，该接口只有在任务状态为时才支持结果正确查询：
    /// 3 扫描成功
    ///
    /// - Returns: `AsyncSequence`s of ``DspaDiscoveryCOSTaskResultDetail`` and ``DescribeDSPACOSTaskResultDetailResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDSPACOSTaskResultDetailPaginator(_ input: DescribeDSPACOSTaskResultDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDSPACOSTaskResultDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDSPACOSTaskResultDetail, logger: logger, on: eventLoop)
    }
}
