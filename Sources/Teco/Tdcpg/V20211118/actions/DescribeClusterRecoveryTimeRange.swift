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

extension Tdcpg {
    /// DescribeClusterRecoveryTimeRange请求参数结构体
    public struct DescribeClusterRecoveryTimeRangeRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 期望的回档时间点，传入从集群创建时间到当前时间之间的时间点。按照RFC3339标准表示，并且使用东八区时区时间，格式为：YYYY-MM-DDThh:mm:ss+08:00。
        public let dataPoint: String

        public init(clusterId: String, dataPoint: String) {
            self.clusterId = clusterId
            self.dataPoint = dataPoint
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case dataPoint = "DataPoint"
        }
    }

    /// DescribeClusterRecoveryTimeRange返回参数结构体
    public struct DescribeClusterRecoveryTimeRangeResponse: TCResponseModel {
        /// 可回档时间范围列表
        public let availableRecoveryTimeRangeSet: [AvailableRecoveryTimeRange]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case availableRecoveryTimeRangeSet = "AvailableRecoveryTimeRangeSet"
            case requestId = "RequestId"
        }
    }

    /// 查询集群可回档时间范围
    @inlinable
    public func describeClusterRecoveryTimeRange(_ input: DescribeClusterRecoveryTimeRangeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterRecoveryTimeRangeResponse> {
        self.client.execute(action: "DescribeClusterRecoveryTimeRange", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群可回档时间范围
    @inlinable
    public func describeClusterRecoveryTimeRange(_ input: DescribeClusterRecoveryTimeRangeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterRecoveryTimeRangeResponse {
        try await self.client.execute(action: "DescribeClusterRecoveryTimeRange", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群可回档时间范围
    @inlinable
    public func describeClusterRecoveryTimeRange(clusterId: String, dataPoint: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterRecoveryTimeRangeResponse> {
        let input = DescribeClusterRecoveryTimeRangeRequest(clusterId: clusterId, dataPoint: dataPoint)
        return self.client.execute(action: "DescribeClusterRecoveryTimeRange", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群可回档时间范围
    @inlinable
    public func describeClusterRecoveryTimeRange(clusterId: String, dataPoint: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterRecoveryTimeRangeResponse {
        let input = DescribeClusterRecoveryTimeRangeRequest(clusterId: clusterId, dataPoint: dataPoint)
        return try await self.client.execute(action: "DescribeClusterRecoveryTimeRange", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
