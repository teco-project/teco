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

extension Tdmq {
    /// DescribeRocketMQVipInstanceDetail请求参数结构体
    public struct DescribeRocketMQVipInstanceDetailRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeRocketMQVipInstanceDetail返回参数结构体
    public struct DescribeRocketMQVipInstanceDetailResponse: TCResponseModel {
        /// 集群信息
        public let clusterInfo: RocketMQClusterInfo

        /// 集群配置
        public let instanceConfig: RocketMQInstanceConfig

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterInfo = "ClusterInfo"
            case instanceConfig = "InstanceConfig"
            case requestId = "RequestId"
        }
    }

    /// 获取单个RocketMQ专享集群信息
    @inlinable
    public func describeRocketMQVipInstanceDetail(_ input: DescribeRocketMQVipInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQVipInstanceDetailResponse> {
        self.client.execute(action: "DescribeRocketMQVipInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单个RocketMQ专享集群信息
    @inlinable
    public func describeRocketMQVipInstanceDetail(_ input: DescribeRocketMQVipInstanceDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQVipInstanceDetailResponse {
        try await self.client.execute(action: "DescribeRocketMQVipInstanceDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单个RocketMQ专享集群信息
    @inlinable
    public func describeRocketMQVipInstanceDetail(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQVipInstanceDetailResponse> {
        self.describeRocketMQVipInstanceDetail(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单个RocketMQ专享集群信息
    @inlinable
    public func describeRocketMQVipInstanceDetail(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQVipInstanceDetailResponse {
        try await self.describeRocketMQVipInstanceDetail(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
