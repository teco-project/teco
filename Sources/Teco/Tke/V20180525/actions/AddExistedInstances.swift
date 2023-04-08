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

extension Tke {
    /// AddExistedInstances请求参数结构体
    public struct AddExistedInstancesRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 实例列表，不支持竞价实例
        public let instanceIds: [String]

        /// 实例额外需要设置参数信息(默认值)
        public let instanceAdvancedSettings: InstanceAdvancedSettings?

        /// 增强服务。通过该参数可以指定是否开启云安全、云监控等服务。若不指定该参数，则默认开启云监控、云安全服务。
        public let enhancedService: EnhancedService?

        /// 节点登录信息（目前仅支持使用Password或者单个KeyIds）
        public let loginSettings: LoginSettings?

        /// 重装系统时，可以指定修改实例的HostName(集群为HostName模式时，此参数必传，规则名称除不支持大写字符外与[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口HostName一致)
        public let hostName: String?

        /// 实例所属安全组。该参数可以通过调用 DescribeSecurityGroups 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。（目前仅支持设置单个sgId）
        public let securityGroupIds: [String]?

        /// 节点池选项
        public let nodePool: NodePoolOption?

        /// 校验规则相关选项，可配置跳过某些校验规则。目前支持GlobalRouteCIDRCheck（跳过GlobalRouter的相关校验），VpcCniCIDRCheck（跳过VpcCni相关校验）
        public let skipValidateOptions: [String]?

        /// 参数InstanceAdvancedSettingsOverride数组用于定制化地配置各台instance，与InstanceIds顺序对应。当传入InstanceAdvancedSettingsOverrides数组时，将覆盖默认参数InstanceAdvancedSettings；当没有传入参数InstanceAdvancedSettingsOverrides时，InstanceAdvancedSettings参数对每台instance生效。
        ///
        /// 参数InstanceAdvancedSettingsOverride数组的长度应与InstanceIds数组一致；当长度大于InstanceIds数组长度时将报错；当长度小于InstanceIds数组时，没有对应配置的instace将使用默认配置。
        public let instanceAdvancedSettingsOverrides: [InstanceAdvancedSettings]?

        /// 节点镜像（节点选项时，该参数是必传参数）
        public let imageId: String?

        public init(clusterId: String, instanceIds: [String], instanceAdvancedSettings: InstanceAdvancedSettings? = nil, enhancedService: EnhancedService? = nil, loginSettings: LoginSettings? = nil, hostName: String? = nil, securityGroupIds: [String]? = nil, nodePool: NodePoolOption? = nil, skipValidateOptions: [String]? = nil, instanceAdvancedSettingsOverrides: [InstanceAdvancedSettings]? = nil, imageId: String? = nil) {
            self.clusterId = clusterId
            self.instanceIds = instanceIds
            self.instanceAdvancedSettings = instanceAdvancedSettings
            self.enhancedService = enhancedService
            self.loginSettings = loginSettings
            self.hostName = hostName
            self.securityGroupIds = securityGroupIds
            self.nodePool = nodePool
            self.skipValidateOptions = skipValidateOptions
            self.instanceAdvancedSettingsOverrides = instanceAdvancedSettingsOverrides
            self.imageId = imageId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIds = "InstanceIds"
            case instanceAdvancedSettings = "InstanceAdvancedSettings"
            case enhancedService = "EnhancedService"
            case loginSettings = "LoginSettings"
            case hostName = "HostName"
            case securityGroupIds = "SecurityGroupIds"
            case nodePool = "NodePool"
            case skipValidateOptions = "SkipValidateOptions"
            case instanceAdvancedSettingsOverrides = "InstanceAdvancedSettingsOverrides"
            case imageId = "ImageId"
        }
    }

    /// AddExistedInstances返回参数结构体
    public struct AddExistedInstancesResponse: TCResponseModel {
        /// 失败的节点ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedInstanceIds: [String]?

        /// 成功的节点ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let succInstanceIds: [String]?

        /// 超时未返回出来节点的ID(可能失败，也可能成功)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let timeoutInstanceIds: [String]?

        /// 失败的节点的失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedReasons: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case failedInstanceIds = "FailedInstanceIds"
            case succInstanceIds = "SuccInstanceIds"
            case timeoutInstanceIds = "TimeoutInstanceIds"
            case failedReasons = "FailedReasons"
            case requestId = "RequestId"
        }
    }

    /// 添加已经存在的实例到集群
    @inlinable
    public func addExistedInstances(_ input: AddExistedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddExistedInstancesResponse> {
        self.client.execute(action: "AddExistedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加已经存在的实例到集群
    @inlinable
    public func addExistedInstances(_ input: AddExistedInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddExistedInstancesResponse {
        try await self.client.execute(action: "AddExistedInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加已经存在的实例到集群
    @inlinable
    public func addExistedInstances(clusterId: String, instanceIds: [String], instanceAdvancedSettings: InstanceAdvancedSettings? = nil, enhancedService: EnhancedService? = nil, loginSettings: LoginSettings? = nil, hostName: String? = nil, securityGroupIds: [String]? = nil, nodePool: NodePoolOption? = nil, skipValidateOptions: [String]? = nil, instanceAdvancedSettingsOverrides: [InstanceAdvancedSettings]? = nil, imageId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddExistedInstancesResponse> {
        self.addExistedInstances(.init(clusterId: clusterId, instanceIds: instanceIds, instanceAdvancedSettings: instanceAdvancedSettings, enhancedService: enhancedService, loginSettings: loginSettings, hostName: hostName, securityGroupIds: securityGroupIds, nodePool: nodePool, skipValidateOptions: skipValidateOptions, instanceAdvancedSettingsOverrides: instanceAdvancedSettingsOverrides, imageId: imageId), region: region, logger: logger, on: eventLoop)
    }

    /// 添加已经存在的实例到集群
    @inlinable
    public func addExistedInstances(clusterId: String, instanceIds: [String], instanceAdvancedSettings: InstanceAdvancedSettings? = nil, enhancedService: EnhancedService? = nil, loginSettings: LoginSettings? = nil, hostName: String? = nil, securityGroupIds: [String]? = nil, nodePool: NodePoolOption? = nil, skipValidateOptions: [String]? = nil, instanceAdvancedSettingsOverrides: [InstanceAdvancedSettings]? = nil, imageId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddExistedInstancesResponse {
        try await self.addExistedInstances(.init(clusterId: clusterId, instanceIds: instanceIds, instanceAdvancedSettings: instanceAdvancedSettings, enhancedService: enhancedService, loginSettings: loginSettings, hostName: hostName, securityGroupIds: securityGroupIds, nodePool: nodePool, skipValidateOptions: skipValidateOptions, instanceAdvancedSettingsOverrides: instanceAdvancedSettingsOverrides, imageId: imageId), region: region, logger: logger, on: eventLoop)
    }
}
