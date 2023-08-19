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

extension Emr {
    /// RunJobFlow请求参数结构体
    public struct RunJobFlowRequest: TCRequest {
        /// 作业名称。
        public let name: String

        /// 是否新创建集群。
        /// true，新创建集群，则使用Instance中的参数进行集群创建。
        /// false，使用已有集群，则通过InstanceId传入。
        public let createCluster: Bool

        /// 作业流程执行步骤。
        public let steps: [Step]

        /// 作业流程正常完成时，集群的处理方式，可选择:
        /// Terminate 销毁集群。
        /// Reserve 保留集群。
        public let instancePolicy: String

        /// 只有CreateCluster为true时生效，目前只支持EMR版本，例如EMR-2.2.0，不支持ClickHouse和Druid版本。
        public let productVersion: String?

        /// 只在CreateCluster为true时生效。
        /// true 表示安装kerberos，false表示不安装kerberos。
        public let securityClusterFlag: Bool?

        /// 只在CreateCluster为true时生效。
        /// 新建集群时，要安装的软件列表。
        public let software: [String]?

        /// 引导脚本。
        public let bootstrapActions: [BootstrapAction]?

        /// 指定配置创建集群。
        public let configurations: [Configuration]?

        /// 作业日志保存地址。
        public let logUri: String?

        /// 只在CreateCluster为false时生效。
        public let instanceId: String?

        /// 自定义应用角色，大数据应用访问外部服务时使用的角色，默认为"EME_QCSRole"。
        public let applicationRole: String?

        /// 重入标签，用来可重入检查，防止在一段时间内，创建相同的流程作业。
        public let clientToken: String?

        /// 只在CreateCluster为true时生效，使用该配置创建集群。
        public let instance: ClusterSetting?

        public init(name: String, createCluster: Bool, steps: [Step], instancePolicy: String, productVersion: String? = nil, securityClusterFlag: Bool? = nil, software: [String]? = nil, bootstrapActions: [BootstrapAction]? = nil, configurations: [Configuration]? = nil, logUri: String? = nil, instanceId: String? = nil, applicationRole: String? = nil, clientToken: String? = nil, instance: ClusterSetting? = nil) {
            self.name = name
            self.createCluster = createCluster
            self.steps = steps
            self.instancePolicy = instancePolicy
            self.productVersion = productVersion
            self.securityClusterFlag = securityClusterFlag
            self.software = software
            self.bootstrapActions = bootstrapActions
            self.configurations = configurations
            self.logUri = logUri
            self.instanceId = instanceId
            self.applicationRole = applicationRole
            self.clientToken = clientToken
            self.instance = instance
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case createCluster = "CreateCluster"
            case steps = "Steps"
            case instancePolicy = "InstancePolicy"
            case productVersion = "ProductVersion"
            case securityClusterFlag = "SecurityClusterFlag"
            case software = "Software"
            case bootstrapActions = "BootstrapActions"
            case configurations = "Configurations"
            case logUri = "LogUri"
            case instanceId = "InstanceId"
            case applicationRole = "ApplicationRole"
            case clientToken = "ClientToken"
            case instance = "Instance"
        }
    }

    /// RunJobFlow返回参数结构体
    public struct RunJobFlowResponse: TCResponse {
        /// 作业流程ID。
        public let jobFlowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobFlowId = "JobFlowId"
            case requestId = "RequestId"
        }
    }

    /// 创建流程作业
    @inlinable
    public func runJobFlow(_ input: RunJobFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunJobFlowResponse> {
        self.client.execute(action: "RunJobFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建流程作业
    @inlinable
    public func runJobFlow(_ input: RunJobFlowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunJobFlowResponse {
        try await self.client.execute(action: "RunJobFlow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建流程作业
    @inlinable
    public func runJobFlow(name: String, createCluster: Bool, steps: [Step], instancePolicy: String, productVersion: String? = nil, securityClusterFlag: Bool? = nil, software: [String]? = nil, bootstrapActions: [BootstrapAction]? = nil, configurations: [Configuration]? = nil, logUri: String? = nil, instanceId: String? = nil, applicationRole: String? = nil, clientToken: String? = nil, instance: ClusterSetting? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunJobFlowResponse> {
        self.runJobFlow(.init(name: name, createCluster: createCluster, steps: steps, instancePolicy: instancePolicy, productVersion: productVersion, securityClusterFlag: securityClusterFlag, software: software, bootstrapActions: bootstrapActions, configurations: configurations, logUri: logUri, instanceId: instanceId, applicationRole: applicationRole, clientToken: clientToken, instance: instance), region: region, logger: logger, on: eventLoop)
    }

    /// 创建流程作业
    @inlinable
    public func runJobFlow(name: String, createCluster: Bool, steps: [Step], instancePolicy: String, productVersion: String? = nil, securityClusterFlag: Bool? = nil, software: [String]? = nil, bootstrapActions: [BootstrapAction]? = nil, configurations: [Configuration]? = nil, logUri: String? = nil, instanceId: String? = nil, applicationRole: String? = nil, clientToken: String? = nil, instance: ClusterSetting? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunJobFlowResponse {
        try await self.runJobFlow(.init(name: name, createCluster: createCluster, steps: steps, instancePolicy: instancePolicy, productVersion: productVersion, securityClusterFlag: securityClusterFlag, software: software, bootstrapActions: bootstrapActions, configurations: configurations, logUri: logUri, instanceId: instanceId, applicationRole: applicationRole, clientToken: clientToken, instance: instance), region: region, logger: logger, on: eventLoop)
    }
}
