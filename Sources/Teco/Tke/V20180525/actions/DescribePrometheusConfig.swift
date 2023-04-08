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

import TecoCore

extension Tke {
    /// DescribePrometheusConfig请求参数结构体
    public struct DescribePrometheusConfigRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// 集群id
        public let clusterId: String

        /// 集群类型
        public let clusterType: String

        public init(instanceId: String, clusterId: String, clusterType: String) {
            self.instanceId = instanceId
            self.clusterId = clusterId
            self.clusterType = clusterType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case clusterId = "ClusterId"
            case clusterType = "ClusterType"
        }
    }

    /// DescribePrometheusConfig返回参数结构体
    public struct DescribePrometheusConfigResponse: TCResponseModel {
        /// 全局配置
        public let config: String

        /// ServiceMonitor配置
        public let serviceMonitors: [PrometheusConfigItem]

        /// PodMonitor配置
        public let podMonitors: [PrometheusConfigItem]

        /// 原生Job
        public let rawJobs: [PrometheusConfigItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case config = "Config"
            case serviceMonitors = "ServiceMonitors"
            case podMonitors = "PodMonitors"
            case rawJobs = "RawJobs"
            case requestId = "RequestId"
        }
    }

    /// 拉取Prometheus配置
    @inlinable
    public func describePrometheusConfig(_ input: DescribePrometheusConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusConfigResponse> {
        self.client.execute(action: "DescribePrometheusConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取Prometheus配置
    @inlinable
    public func describePrometheusConfig(_ input: DescribePrometheusConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusConfigResponse {
        try await self.client.execute(action: "DescribePrometheusConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取Prometheus配置
    @inlinable
    public func describePrometheusConfig(instanceId: String, clusterId: String, clusterType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusConfigResponse> {
        self.describePrometheusConfig(.init(instanceId: instanceId, clusterId: clusterId, clusterType: clusterType), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取Prometheus配置
    @inlinable
    public func describePrometheusConfig(instanceId: String, clusterId: String, clusterType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusConfigResponse {
        try await self.describePrometheusConfig(.init(instanceId: instanceId, clusterId: clusterId, clusterType: clusterType), region: region, logger: logger, on: eventLoop)
    }
}
