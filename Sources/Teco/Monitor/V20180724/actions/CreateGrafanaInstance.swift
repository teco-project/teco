//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Monitor {
    /// CreateGrafanaInstance请求参数结构体
    public struct CreateGrafanaInstanceRequest: TCRequestModel {
        /// 实例名
        public let instanceName: String

        /// VPC ID
        public let vpcId: String

        /// 子网 ID 数组
        public let subnetIds: [String]

        /// Grafana 初始密码
        public let grafanaInitPassword: String

        /// 是否启用外网
        public let enableInternet: Bool

        /// 标签
        public let tagSpecification: [PrometheusTag]?

        public init(instanceName: String, vpcId: String, subnetIds: [String], grafanaInitPassword: String, enableInternet: Bool, tagSpecification: [PrometheusTag]? = nil) {
            self.instanceName = instanceName
            self.vpcId = vpcId
            self.subnetIds = subnetIds
            self.grafanaInitPassword = grafanaInitPassword
            self.enableInternet = enableInternet
            self.tagSpecification = tagSpecification
        }

        enum CodingKeys: String, CodingKey {
            case instanceName = "InstanceName"
            case vpcId = "VpcId"
            case subnetIds = "SubnetIds"
            case grafanaInitPassword = "GrafanaInitPassword"
            case enableInternet = "EnableInternet"
            case tagSpecification = "TagSpecification"
        }
    }

    /// CreateGrafanaInstance返回参数结构体
    public struct CreateGrafanaInstanceResponse: TCResponseModel {
        /// 实例名
        public let instanceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 创建 Grafana 实例
    @inlinable
    public func createGrafanaInstance(_ input: CreateGrafanaInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateGrafanaInstanceResponse > {
        self.client.execute(action: "CreateGrafanaInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 Grafana 实例
    @inlinable
    public func createGrafanaInstance(_ input: CreateGrafanaInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGrafanaInstanceResponse {
        try await self.client.execute(action: "CreateGrafanaInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建 Grafana 实例
    @inlinable
    public func createGrafanaInstance(instanceName: String, vpcId: String, subnetIds: [String], grafanaInitPassword: String, enableInternet: Bool, tagSpecification: [PrometheusTag]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateGrafanaInstanceResponse > {
        self.createGrafanaInstance(CreateGrafanaInstanceRequest(instanceName: instanceName, vpcId: vpcId, subnetIds: subnetIds, grafanaInitPassword: grafanaInitPassword, enableInternet: enableInternet, tagSpecification: tagSpecification), logger: logger, on: eventLoop)
    }

    /// 创建 Grafana 实例
    @inlinable
    public func createGrafanaInstance(instanceName: String, vpcId: String, subnetIds: [String], grafanaInitPassword: String, enableInternet: Bool, tagSpecification: [PrometheusTag]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGrafanaInstanceResponse {
        try await self.createGrafanaInstance(CreateGrafanaInstanceRequest(instanceName: instanceName, vpcId: vpcId, subnetIds: subnetIds, grafanaInitPassword: grafanaInitPassword, enableInternet: enableInternet, tagSpecification: tagSpecification), logger: logger, on: eventLoop)
    }
}
