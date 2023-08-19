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

extension Ssl {
    /// DescribeHostUpdateRecordDetail请求参数结构体
    public struct DescribeHostUpdateRecordDetailRequest: TCRequest {
        /// 待部署的证书ID
        public let deployRecordId: String

        /// 每页数量，默认10。
        public let limit: String?

        /// 分页偏移量，从0开始。
        public let offset: String?

        public init(deployRecordId: String, limit: String? = nil, offset: String? = nil) {
            self.deployRecordId = deployRecordId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case deployRecordId = "DeployRecordId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeHostUpdateRecordDetail返回参数结构体
    public struct DescribeHostUpdateRecordDetailResponse: TCResponse {
        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 证书部署记录列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let recordDetailList: [UpdateRecordDetails]?

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
            case recordDetailList = "RecordDetailList"
            case successTotalCount = "SuccessTotalCount"
            case failedTotalCount = "FailedTotalCount"
            case runningTotalCount = "RunningTotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查询证书云资源更新记录详情列表
    @inlinable
    public func describeHostUpdateRecordDetail(_ input: DescribeHostUpdateRecordDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostUpdateRecordDetailResponse> {
        self.client.execute(action: "DescribeHostUpdateRecordDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询证书云资源更新记录详情列表
    @inlinable
    public func describeHostUpdateRecordDetail(_ input: DescribeHostUpdateRecordDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostUpdateRecordDetailResponse {
        try await self.client.execute(action: "DescribeHostUpdateRecordDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询证书云资源更新记录详情列表
    @inlinable
    public func describeHostUpdateRecordDetail(deployRecordId: String, limit: String? = nil, offset: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostUpdateRecordDetailResponse> {
        self.describeHostUpdateRecordDetail(.init(deployRecordId: deployRecordId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询证书云资源更新记录详情列表
    @inlinable
    public func describeHostUpdateRecordDetail(deployRecordId: String, limit: String? = nil, offset: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostUpdateRecordDetailResponse {
        try await self.describeHostUpdateRecordDetail(.init(deployRecordId: deployRecordId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
