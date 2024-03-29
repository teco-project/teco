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

extension Monitor {
    /// CreateGrafanaInstance请求参数结构体
    public struct CreateGrafanaInstanceRequest: TCRequest {
        /// 实例名
        public let instanceName: String

        /// VPC ID
        public let vpcId: String

        /// 子网 ID 数组
        public let subnetIds: [String]

        /// 是否启用外网
        public let enableInternet: Bool

        /// Grafana 初始密码
        public let grafanaInitPassword: String?

        /// 标签
        public let tagSpecification: [PrometheusTag]?

        public init(instanceName: String, vpcId: String, subnetIds: [String], enableInternet: Bool, grafanaInitPassword: String? = nil, tagSpecification: [PrometheusTag]? = nil) {
            self.instanceName = instanceName
            self.vpcId = vpcId
            self.subnetIds = subnetIds
            self.enableInternet = enableInternet
            self.grafanaInitPassword = grafanaInitPassword
            self.tagSpecification = tagSpecification
        }

        enum CodingKeys: String, CodingKey {
            case instanceName = "InstanceName"
            case vpcId = "VpcId"
            case subnetIds = "SubnetIds"
            case enableInternet = "EnableInternet"
            case grafanaInitPassword = "GrafanaInitPassword"
            case tagSpecification = "TagSpecification"
        }
    }

    /// CreateGrafanaInstance返回参数结构体
    public struct CreateGrafanaInstanceResponse: TCResponse {
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
    ///
    /// 本接口（CreateGrafanaInstance）用于创建 Grafana 包年包月实例，默认基础版、到期自动续费、不可使用代金券。
    @inlinable
    public func createGrafanaInstance(_ input: CreateGrafanaInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGrafanaInstanceResponse> {
        self.client.execute(action: "CreateGrafanaInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建 Grafana 实例
    ///
    /// 本接口（CreateGrafanaInstance）用于创建 Grafana 包年包月实例，默认基础版、到期自动续费、不可使用代金券。
    @inlinable
    public func createGrafanaInstance(_ input: CreateGrafanaInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGrafanaInstanceResponse {
        try await self.client.execute(action: "CreateGrafanaInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建 Grafana 实例
    ///
    /// 本接口（CreateGrafanaInstance）用于创建 Grafana 包年包月实例，默认基础版、到期自动续费、不可使用代金券。
    @inlinable
    public func createGrafanaInstance(instanceName: String, vpcId: String, subnetIds: [String], enableInternet: Bool, grafanaInitPassword: String? = nil, tagSpecification: [PrometheusTag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateGrafanaInstanceResponse> {
        self.createGrafanaInstance(.init(instanceName: instanceName, vpcId: vpcId, subnetIds: subnetIds, enableInternet: enableInternet, grafanaInitPassword: grafanaInitPassword, tagSpecification: tagSpecification), region: region, logger: logger, on: eventLoop)
    }

    /// 创建 Grafana 实例
    ///
    /// 本接口（CreateGrafanaInstance）用于创建 Grafana 包年包月实例，默认基础版、到期自动续费、不可使用代金券。
    @inlinable
    public func createGrafanaInstance(instanceName: String, vpcId: String, subnetIds: [String], enableInternet: Bool, grafanaInitPassword: String? = nil, tagSpecification: [PrometheusTag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateGrafanaInstanceResponse {
        try await self.createGrafanaInstance(.init(instanceName: instanceName, vpcId: vpcId, subnetIds: subnetIds, enableInternet: enableInternet, grafanaInitPassword: grafanaInitPassword, tagSpecification: tagSpecification), region: region, logger: logger, on: eventLoop)
    }
}
