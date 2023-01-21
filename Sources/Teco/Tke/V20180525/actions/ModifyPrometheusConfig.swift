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

extension Tke {
    /// ModifyPrometheusConfig请求参数结构体
    public struct ModifyPrometheusConfigRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        /// 集群类型
        public let clusterType: String

        /// 集群id
        public let clusterId: String

        /// ServiceMonitors配置
        public let serviceMonitors: [PrometheusConfigItem]?

        /// PodMonitors配置
        public let podMonitors: [PrometheusConfigItem]?

        /// prometheus原生Job配置
        public let rawJobs: [PrometheusConfigItem]?

        public init(instanceId: String, clusterType: String, clusterId: String, serviceMonitors: [PrometheusConfigItem]? = nil, podMonitors: [PrometheusConfigItem]? = nil, rawJobs: [PrometheusConfigItem]? = nil) {
            self.instanceId = instanceId
            self.clusterType = clusterType
            self.clusterId = clusterId
            self.serviceMonitors = serviceMonitors
            self.podMonitors = podMonitors
            self.rawJobs = rawJobs
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case clusterType = "ClusterType"
            case clusterId = "ClusterId"
            case serviceMonitors = "ServiceMonitors"
            case podMonitors = "PodMonitors"
            case rawJobs = "RawJobs"
        }
    }

    /// ModifyPrometheusConfig返回参数结构体
    public struct ModifyPrometheusConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改prometheus配置
    ///
    /// 修改prometheus配置，如果配置项不存在，则会新增
    @inlinable @discardableResult
    public func modifyPrometheusConfig(_ input: ModifyPrometheusConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrometheusConfigResponse> {
        self.client.execute(action: "ModifyPrometheusConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改prometheus配置
    ///
    /// 修改prometheus配置，如果配置项不存在，则会新增
    @inlinable @discardableResult
    public func modifyPrometheusConfig(_ input: ModifyPrometheusConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusConfigResponse {
        try await self.client.execute(action: "ModifyPrometheusConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改prometheus配置
    ///
    /// 修改prometheus配置，如果配置项不存在，则会新增
    @inlinable @discardableResult
    public func modifyPrometheusConfig(instanceId: String, clusterType: String, clusterId: String, serviceMonitors: [PrometheusConfigItem]? = nil, podMonitors: [PrometheusConfigItem]? = nil, rawJobs: [PrometheusConfigItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrometheusConfigResponse> {
        self.modifyPrometheusConfig(ModifyPrometheusConfigRequest(instanceId: instanceId, clusterType: clusterType, clusterId: clusterId, serviceMonitors: serviceMonitors, podMonitors: podMonitors, rawJobs: rawJobs), region: region, logger: logger, on: eventLoop)
    }

    /// 修改prometheus配置
    ///
    /// 修改prometheus配置，如果配置项不存在，则会新增
    @inlinable @discardableResult
    public func modifyPrometheusConfig(instanceId: String, clusterType: String, clusterId: String, serviceMonitors: [PrometheusConfigItem]? = nil, podMonitors: [PrometheusConfigItem]? = nil, rawJobs: [PrometheusConfigItem]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrometheusConfigResponse {
        try await self.modifyPrometheusConfig(ModifyPrometheusConfigRequest(instanceId: instanceId, clusterType: clusterType, clusterId: clusterId, serviceMonitors: serviceMonitors, podMonitors: podMonitors, rawJobs: rawJobs), region: region, logger: logger, on: eventLoop)
    }
}
