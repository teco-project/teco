//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cynosdb {
    /// DescribeRollbackTimeRange请求参数结构体
    public struct DescribeRollbackTimeRangeRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeRollbackTimeRange返回参数结构体
    public struct DescribeRollbackTimeRangeResponse: TCResponseModel {
        /// 有效回归时间范围开始时间点（已废弃）
        public let timeRangeStart: String

        /// 有效回归时间范围结束时间点（已废弃）
        public let timeRangeEnd: String

        /// 可回档时间范围
        public let rollbackTimeRanges: [RollbackTimeRange]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case timeRangeStart = "TimeRangeStart"
            case timeRangeEnd = "TimeRangeEnd"
            case rollbackTimeRanges = "RollbackTimeRanges"
            case requestId = "RequestId"
        }
    }

    /// 查询有效回滚时间范围
    ///
    /// 查询指定集群有效回滚时间范围
    @inlinable
    public func describeRollbackTimeRange(_ input: DescribeRollbackTimeRangeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRollbackTimeRangeResponse> {
        self.client.execute(action: "DescribeRollbackTimeRange", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询有效回滚时间范围
    ///
    /// 查询指定集群有效回滚时间范围
    @inlinable
    public func describeRollbackTimeRange(_ input: DescribeRollbackTimeRangeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRollbackTimeRangeResponse {
        try await self.client.execute(action: "DescribeRollbackTimeRange", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询有效回滚时间范围
    ///
    /// 查询指定集群有效回滚时间范围
    @inlinable
    public func describeRollbackTimeRange(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRollbackTimeRangeResponse> {
        self.describeRollbackTimeRange(DescribeRollbackTimeRangeRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询有效回滚时间范围
    ///
    /// 查询指定集群有效回滚时间范围
    @inlinable
    public func describeRollbackTimeRange(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRollbackTimeRangeResponse {
        try await self.describeRollbackTimeRange(DescribeRollbackTimeRangeRequest(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
