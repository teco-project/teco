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

extension Tsf {
    /// AddClusterInstances请求参数结构体
    public struct AddClusterInstancesRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 云主机ID列表
        public let instanceIdList: [String]

        /// 操作系统名称
        public let osName: String?

        /// 操作系统镜像ID
        public let imageId: String?

        /// 重装系统密码设置
        public let password: String?

        /// 重装系统，关联密钥设置
        public let keyId: String?

        /// 安全组设置
        public let sgId: String?

        /// 云主机导入方式，虚拟机集群必填，容器集群不填写此字段，R：重装TSF系统镜像，M：手动安装agent
        public let instanceImportMode: String?

        /// 镜像定制类型
        public let osCustomizeType: String?

        /// 镜像特征ID列表
        public let featureIdList: [String]?

        /// 实例额外需要设置参数信息
        public let instanceAdvancedSettings: InstanceAdvancedSettings?

        /// 安全组 ID 列表
        public let securityGroupIds: [String]?

        public init(clusterId: String, instanceIdList: [String], osName: String? = nil, imageId: String? = nil, password: String? = nil, keyId: String? = nil, sgId: String? = nil, instanceImportMode: String? = nil, osCustomizeType: String? = nil, featureIdList: [String]? = nil, instanceAdvancedSettings: InstanceAdvancedSettings? = nil, securityGroupIds: [String]? = nil) {
            self.clusterId = clusterId
            self.instanceIdList = instanceIdList
            self.osName = osName
            self.imageId = imageId
            self.password = password
            self.keyId = keyId
            self.sgId = sgId
            self.instanceImportMode = instanceImportMode
            self.osCustomizeType = osCustomizeType
            self.featureIdList = featureIdList
            self.instanceAdvancedSettings = instanceAdvancedSettings
            self.securityGroupIds = securityGroupIds
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIdList = "InstanceIdList"
            case osName = "OsName"
            case imageId = "ImageId"
            case password = "Password"
            case keyId = "KeyId"
            case sgId = "SgId"
            case instanceImportMode = "InstanceImportMode"
            case osCustomizeType = "OsCustomizeType"
            case featureIdList = "FeatureIdList"
            case instanceAdvancedSettings = "InstanceAdvancedSettings"
            case securityGroupIds = "SecurityGroupIds"
        }
    }

    /// AddClusterInstances返回参数结构体
    public struct AddClusterInstancesResponse: TCResponseModel {
        /// 添加云主机的返回列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: AddInstanceResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 集群添加云主机
    ///
    /// 添加云主机节点至TSF集群
    @inlinable
    public func addClusterInstances(_ input: AddClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddClusterInstancesResponse> {
        self.client.execute(action: "AddClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集群添加云主机
    ///
    /// 添加云主机节点至TSF集群
    @inlinable
    public func addClusterInstances(_ input: AddClusterInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddClusterInstancesResponse {
        try await self.client.execute(action: "AddClusterInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 集群添加云主机
    ///
    /// 添加云主机节点至TSF集群
    @inlinable
    public func addClusterInstances(clusterId: String, instanceIdList: [String], osName: String? = nil, imageId: String? = nil, password: String? = nil, keyId: String? = nil, sgId: String? = nil, instanceImportMode: String? = nil, osCustomizeType: String? = nil, featureIdList: [String]? = nil, instanceAdvancedSettings: InstanceAdvancedSettings? = nil, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddClusterInstancesResponse> {
        self.addClusterInstances(.init(clusterId: clusterId, instanceIdList: instanceIdList, osName: osName, imageId: imageId, password: password, keyId: keyId, sgId: sgId, instanceImportMode: instanceImportMode, osCustomizeType: osCustomizeType, featureIdList: featureIdList, instanceAdvancedSettings: instanceAdvancedSettings, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }

    /// 集群添加云主机
    ///
    /// 添加云主机节点至TSF集群
    @inlinable
    public func addClusterInstances(clusterId: String, instanceIdList: [String], osName: String? = nil, imageId: String? = nil, password: String? = nil, keyId: String? = nil, sgId: String? = nil, instanceImportMode: String? = nil, osCustomizeType: String? = nil, featureIdList: [String]? = nil, instanceAdvancedSettings: InstanceAdvancedSettings? = nil, securityGroupIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddClusterInstancesResponse {
        try await self.addClusterInstances(.init(clusterId: clusterId, instanceIdList: instanceIdList, osName: osName, imageId: imageId, password: password, keyId: keyId, sgId: sgId, instanceImportMode: instanceImportMode, osCustomizeType: osCustomizeType, featureIdList: featureIdList, instanceAdvancedSettings: instanceAdvancedSettings, securityGroupIds: securityGroupIds), region: region, logger: logger, on: eventLoop)
    }
}
