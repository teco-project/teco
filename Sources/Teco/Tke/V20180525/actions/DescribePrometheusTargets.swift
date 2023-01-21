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

extension Tke {
    /// DescribePrometheusTargets请求参数结构体
    public struct DescribePrometheusTargetsRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// 集群类型
        public let clusterType: String

        /// 集群id
        public let clusterId: String

        /// 过滤条件，当前支持
        /// Name=state
        /// Value=up, down, unknown
        public let filters: [Filter]?

        public init(instanceId: String, clusterType: String, clusterId: String, filters: [Filter]? = nil) {
            self.instanceId = instanceId
            self.clusterType = clusterType
            self.clusterId = clusterId
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case clusterType = "ClusterType"
            case clusterId = "ClusterId"
            case filters = "Filters"
        }
    }

    /// DescribePrometheusTargets返回参数结构体
    public struct DescribePrometheusTargetsResponse: TCResponseModel {
        /// 所有Job的targets信息
        public let jobs: [PrometheusJobTargets]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobs = "Jobs"
            case requestId = "RequestId"
        }
    }

    /// 获取targets信息
    @inlinable
    public func describePrometheusTargets(_ input: DescribePrometheusTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusTargetsResponse> {
        self.client.execute(action: "DescribePrometheusTargets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取targets信息
    @inlinable
    public func describePrometheusTargets(_ input: DescribePrometheusTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusTargetsResponse {
        try await self.client.execute(action: "DescribePrometheusTargets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取targets信息
    @inlinable
    public func describePrometheusTargets(instanceId: String, clusterType: String, clusterId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusTargetsResponse> {
        self.describePrometheusTargets(DescribePrometheusTargetsRequest(instanceId: instanceId, clusterType: clusterType, clusterId: clusterId, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取targets信息
    @inlinable
    public func describePrometheusTargets(instanceId: String, clusterType: String, clusterId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusTargetsResponse {
        try await self.describePrometheusTargets(DescribePrometheusTargetsRequest(instanceId: instanceId, clusterType: clusterType, clusterId: clusterId, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
