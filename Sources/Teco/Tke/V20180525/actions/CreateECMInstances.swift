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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tke {
    /// CreateECMInstances请求参数结构体
    public struct CreateECMInstancesRequest: TCRequestModel {
        /// 集群id
        public let clusterID: String

        /// 模块id
        public let moduleId: String

        /// 需要创建实例的可用区及创建数目及运营商的列表
        public let zoneInstanceCountISPSet: [ECMZoneInstanceCountISP]

        /// 密码
        public let password: String?

        /// 公网带宽
        public let internetMaxBandwidthOut: Int64?

        /// 镜像id
        public let imageId: String?

        /// 实例名称
        public let instanceName: String?

        /// 主机名称
        public let hostName: String?

        /// 增强服务，包括云镜和云监控
        public let enhancedService: ECMEnhancedService?

        /// 用户自定义脚本
        public let userData: String?

        /// 实例扩展信息
        public let external: String?

        /// 实例所属安全组
        public let securityGroupIds: [String]?

        public init(clusterID: String, moduleId: String, zoneInstanceCountISPSet: [ECMZoneInstanceCountISP], password: String? = nil, internetMaxBandwidthOut: Int64? = nil, imageId: String? = nil, instanceName: String? = nil, hostName: String? = nil, enhancedService: ECMEnhancedService? = nil, userData: String? = nil, external: String? = nil, securityGroupIds: [String]? = nil) {
            self.clusterID = clusterID
            self.moduleId = moduleId
            self.zoneInstanceCountISPSet = zoneInstanceCountISPSet
            self.password = password
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.imageId = imageId
            self.instanceName = instanceName
            self.hostName = hostName
            self.enhancedService = enhancedService
            self.userData = userData
            self.external = external
            self.securityGroupIds = securityGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case clusterID = "ClusterID"
            case moduleId = "ModuleId"
            case zoneInstanceCountISPSet = "ZoneInstanceCountISPSet"
            case password = "Password"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case imageId = "ImageId"
            case instanceName = "InstanceName"
            case hostName = "HostName"
            case enhancedService = "EnhancedService"
            case userData = "UserData"
            case external = "External"
            case securityGroupIds = "SecurityGroupIds"
        }
    }

    /// CreateECMInstances返回参数结构体
    public struct CreateECMInstancesResponse: TCResponseModel {
        /// ecm id 列表
        public let ecmIdSet: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ecmIdSet = "EcmIdSet"
            case requestId = "RequestId"
        }
    }

    /// 创建边缘计算ECM机器
    @inlinable
    public func createECMInstances(_ input: CreateECMInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateECMInstancesResponse> {
        self.client.execute(action: "CreateECMInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建边缘计算ECM机器
    @inlinable
    public func createECMInstances(_ input: CreateECMInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateECMInstancesResponse {
        try await self.client.execute(action: "CreateECMInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建边缘计算ECM机器
    @inlinable
    public func createECMInstances(clusterID: String, moduleId: String, zoneInstanceCountISPSet: [ECMZoneInstanceCountISP], password: String? = nil, internetMaxBandwidthOut: Int64? = nil, imageId: String? = nil, instanceName: String? = nil, hostName: String? = nil, enhancedService: ECMEnhancedService? = nil, userData: String? = nil, external: String? = nil, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateECMInstancesResponse> {
        self.createECMInstances(.init(clusterID: clusterID, moduleId: moduleId, zoneInstanceCountISPSet: zoneInstanceCountISPSet, password: password, internetMaxBandwidthOut: internetMaxBandwidthOut, imageId: imageId, instanceName: instanceName, hostName: hostName, enhancedService: enhancedService, userData: userData, external: external, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 创建边缘计算ECM机器
    @inlinable
    public func createECMInstances(clusterID: String, moduleId: String, zoneInstanceCountISPSet: [ECMZoneInstanceCountISP], password: String? = nil, internetMaxBandwidthOut: Int64? = nil, imageId: String? = nil, instanceName: String? = nil, hostName: String? = nil, enhancedService: ECMEnhancedService? = nil, userData: String? = nil, external: String? = nil, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateECMInstancesResponse {
        try await self.createECMInstances(.init(clusterID: clusterID, moduleId: moduleId, zoneInstanceCountISPSet: zoneInstanceCountISPSet, password: password, internetMaxBandwidthOut: internetMaxBandwidthOut, imageId: imageId, instanceName: instanceName, hostName: hostName, enhancedService: enhancedService, userData: userData, external: external, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
