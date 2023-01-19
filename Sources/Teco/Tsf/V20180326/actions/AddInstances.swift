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

extension Tsf {
    /// AddInstances请求参数结构体
    public struct AddInstancesRequest: TCRequestModel {
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

        public init(clusterId: String, instanceIdList: [String], osName: String? = nil, imageId: String? = nil, password: String? = nil, keyId: String? = nil, sgId: String? = nil, instanceImportMode: String? = nil) {
            self.clusterId = clusterId
            self.instanceIdList = instanceIdList
            self.osName = osName
            self.imageId = imageId
            self.password = password
            self.keyId = keyId
            self.sgId = sgId
            self.instanceImportMode = instanceImportMode
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
        }
    }

    /// AddInstances返回参数结构体
    public struct AddInstancesResponse: TCResponseModel {
        /// 添加云主机是否成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 集群导入云主机
    ///
    /// 添加云主机节点至TSF集群
    @inlinable
    public func addInstances(_ input: AddInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddInstancesResponse> {
        self.client.execute(action: "AddInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 集群导入云主机
    ///
    /// 添加云主机节点至TSF集群
    @inlinable
    public func addInstances(_ input: AddInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddInstancesResponse {
        try await self.client.execute(action: "AddInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 集群导入云主机
    ///
    /// 添加云主机节点至TSF集群
    @inlinable
    public func addInstances(clusterId: String, instanceIdList: [String], osName: String? = nil, imageId: String? = nil, password: String? = nil, keyId: String? = nil, sgId: String? = nil, instanceImportMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddInstancesResponse> {
        self.addInstances(AddInstancesRequest(clusterId: clusterId, instanceIdList: instanceIdList, osName: osName, imageId: imageId, password: password, keyId: keyId, sgId: sgId, instanceImportMode: instanceImportMode), region: region, logger: logger, on: eventLoop)
    }

    /// 集群导入云主机
    ///
    /// 添加云主机节点至TSF集群
    @inlinable
    public func addInstances(clusterId: String, instanceIdList: [String], osName: String? = nil, imageId: String? = nil, password: String? = nil, keyId: String? = nil, sgId: String? = nil, instanceImportMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddInstancesResponse {
        try await self.addInstances(AddInstancesRequest(clusterId: clusterId, instanceIdList: instanceIdList, osName: osName, imageId: imageId, password: password, keyId: keyId, sgId: sgId, instanceImportMode: instanceImportMode), region: region, logger: logger, on: eventLoop)
    }
}
