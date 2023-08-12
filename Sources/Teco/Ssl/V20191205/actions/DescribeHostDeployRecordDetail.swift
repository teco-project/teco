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

extension Ssl {
    /// DescribeHostDeployRecordDetail请求参数结构体
    public struct DescribeHostDeployRecordDetailRequest: TCPaginatedRequest {
        /// 待部署的证书ID
        public let deployRecordId: String

        /// 分页偏移量，从0开始。
        public let offset: UInt64?

        /// 每页数量，默认10。
        public let limit: UInt64?

        public init(deployRecordId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.deployRecordId = deployRecordId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case deployRecordId = "DeployRecordId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHostDeployRecordDetailResponse) -> DescribeHostDeployRecordDetailRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeHostDeployRecordDetailRequest(deployRecordId: self.deployRecordId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeHostDeployRecordDetail返回参数结构体
    public struct DescribeHostDeployRecordDetailResponse: TCPaginatedResponse {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 证书部署记录列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deployRecordDetailList: [DeployRecordDetail]?

        /// 成功总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let successTotalCount: Int64?

        /// 失败总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedTotalCount: Int64?

        /// 部署中总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let runningTotalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case deployRecordDetailList = "DeployRecordDetailList"
            case successTotalCount = "SuccessTotalCount"
            case failedTotalCount = "FailedTotalCount"
            case runningTotalCount = "RunningTotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DeployRecordDetail`` list from the paginated response.
        public func getItems() -> [DeployRecordDetail] {
            self.deployRecordDetailList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询证书云资源部署记录详情列表
    @inlinable
    public func describeHostDeployRecordDetail(_ input: DescribeHostDeployRecordDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostDeployRecordDetailResponse> {
        self.client.execute(action: "DescribeHostDeployRecordDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询证书云资源部署记录详情列表
    @inlinable
    public func describeHostDeployRecordDetail(_ input: DescribeHostDeployRecordDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostDeployRecordDetailResponse {
        try await self.client.execute(action: "DescribeHostDeployRecordDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询证书云资源部署记录详情列表
    @inlinable
    public func describeHostDeployRecordDetail(deployRecordId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostDeployRecordDetailResponse> {
        self.describeHostDeployRecordDetail(.init(deployRecordId: deployRecordId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询证书云资源部署记录详情列表
    @inlinable
    public func describeHostDeployRecordDetail(deployRecordId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostDeployRecordDetailResponse {
        try await self.describeHostDeployRecordDetail(.init(deployRecordId: deployRecordId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询证书云资源部署记录详情列表
    @inlinable
    public func describeHostDeployRecordDetailPaginated(_ input: DescribeHostDeployRecordDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DeployRecordDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeHostDeployRecordDetail, logger: logger, on: eventLoop)
    }

    /// 查询证书云资源部署记录详情列表
    @inlinable @discardableResult
    public func describeHostDeployRecordDetailPaginated(_ input: DescribeHostDeployRecordDetailRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHostDeployRecordDetailResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHostDeployRecordDetail, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询证书云资源部署记录详情列表
    ///
    /// - Returns: `AsyncSequence`s of `DeployRecordDetail` and `DescribeHostDeployRecordDetailResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHostDeployRecordDetailPaginator(_ input: DescribeHostDeployRecordDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHostDeployRecordDetailRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHostDeployRecordDetail, logger: logger, on: eventLoop)
    }
}
