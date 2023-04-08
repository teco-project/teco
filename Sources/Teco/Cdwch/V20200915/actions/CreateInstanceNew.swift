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

extension Cdwch {
    /// CreateInstanceNew请求参数结构体
    public struct CreateInstanceNewRequest: TCRequestModel {
        /// 可用区
        public let zone: String

        /// 是否高可用
        public let haFlag: Bool

        /// 私有网络
        public let userVPCId: String

        /// 子网
        public let userSubnetId: String

        /// 版本
        public let productVersion: String

        /// 计费方式
        public let chargeProperties: Charge

        /// 实例名称
        public let instanceName: String

        /// 数据节点
        public let dataSpec: NodeSpec

        /// 标签列表
        public let tags: Tag?

        /// 日志主题ID
        public let clsLogSetId: String?

        /// COS桶名称
        public let cosBucketName: String?

        /// 是否是裸盘挂载
        public let mountDiskType: Int64?

        /// 是否是ZK高可用
        public let haZk: Bool?

        /// ZK节点
        public let commonSpec: NodeSpec?

        public init(zone: String, haFlag: Bool, userVPCId: String, userSubnetId: String, productVersion: String, chargeProperties: Charge, instanceName: String, dataSpec: NodeSpec, tags: Tag? = nil, clsLogSetId: String? = nil, cosBucketName: String? = nil, mountDiskType: Int64? = nil, haZk: Bool? = nil, commonSpec: NodeSpec? = nil) {
            self.zone = zone
            self.haFlag = haFlag
            self.userVPCId = userVPCId
            self.userSubnetId = userSubnetId
            self.productVersion = productVersion
            self.chargeProperties = chargeProperties
            self.instanceName = instanceName
            self.dataSpec = dataSpec
            self.tags = tags
            self.clsLogSetId = clsLogSetId
            self.cosBucketName = cosBucketName
            self.mountDiskType = mountDiskType
            self.haZk = haZk
            self.commonSpec = commonSpec
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case haFlag = "HaFlag"
            case userVPCId = "UserVPCId"
            case userSubnetId = "UserSubnetId"
            case productVersion = "ProductVersion"
            case chargeProperties = "ChargeProperties"
            case instanceName = "InstanceName"
            case dataSpec = "DataSpec"
            case tags = "Tags"
            case clsLogSetId = "ClsLogSetId"
            case cosBucketName = "CosBucketName"
            case mountDiskType = "MountDiskType"
            case haZk = "HAZk"
            case commonSpec = "CommonSpec"
        }
    }

    /// CreateInstanceNew返回参数结构体
    public struct CreateInstanceNewResponse: TCResponseModel {
        /// 流程ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowId: String?

        /// 实例ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceId: String?

        /// 错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMsg: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case instanceId = "InstanceId"
            case errorMsg = "ErrorMsg"
            case requestId = "RequestId"
        }
    }

    /// 创建集群openApi
    ///
    /// 创建集群
    @inlinable
    public func createInstanceNew(_ input: CreateInstanceNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceNewResponse> {
        self.client.execute(action: "CreateInstanceNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建集群openApi
    ///
    /// 创建集群
    @inlinable
    public func createInstanceNew(_ input: CreateInstanceNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceNewResponse {
        try await self.client.execute(action: "CreateInstanceNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建集群openApi
    ///
    /// 创建集群
    @inlinable
    public func createInstanceNew(zone: String, haFlag: Bool, userVPCId: String, userSubnetId: String, productVersion: String, chargeProperties: Charge, instanceName: String, dataSpec: NodeSpec, tags: Tag? = nil, clsLogSetId: String? = nil, cosBucketName: String? = nil, mountDiskType: Int64? = nil, haZk: Bool? = nil, commonSpec: NodeSpec? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceNewResponse> {
        self.createInstanceNew(.init(zone: zone, haFlag: haFlag, userVPCId: userVPCId, userSubnetId: userSubnetId, productVersion: productVersion, chargeProperties: chargeProperties, instanceName: instanceName, dataSpec: dataSpec, tags: tags, clsLogSetId: clsLogSetId, cosBucketName: cosBucketName, mountDiskType: mountDiskType, haZk: haZk, commonSpec: commonSpec), region: region, logger: logger, on: eventLoop)
    }

    /// 创建集群openApi
    ///
    /// 创建集群
    @inlinable
    public func createInstanceNew(zone: String, haFlag: Bool, userVPCId: String, userSubnetId: String, productVersion: String, chargeProperties: Charge, instanceName: String, dataSpec: NodeSpec, tags: Tag? = nil, clsLogSetId: String? = nil, cosBucketName: String? = nil, mountDiskType: Int64? = nil, haZk: Bool? = nil, commonSpec: NodeSpec? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceNewResponse {
        try await self.createInstanceNew(.init(zone: zone, haFlag: haFlag, userVPCId: userVPCId, userSubnetId: userSubnetId, productVersion: productVersion, chargeProperties: chargeProperties, instanceName: instanceName, dataSpec: dataSpec, tags: tags, clsLogSetId: clsLogSetId, cosBucketName: cosBucketName, mountDiskType: mountDiskType, haZk: haZk, commonSpec: commonSpec), region: region, logger: logger, on: eventLoop)
    }
}
