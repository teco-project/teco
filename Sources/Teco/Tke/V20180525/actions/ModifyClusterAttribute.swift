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

extension Tke {
    /// ModifyClusterAttribute请求参数结构体
    public struct ModifyClusterAttributeRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String

        /// 集群所属项目
        public let projectId: Int64?

        /// 集群名称
        public let clusterName: String?

        /// 集群描述
        public let clusterDesc: String?

        /// 集群等级
        public let clusterLevel: String?

        /// 自动变配集群等级
        public let autoUpgradeClusterLevel: AutoUpgradeClusterLevel?

        /// 是否开启QGPU共享
        public let qgpuShareEnable: Bool?

        public init(clusterId: String, projectId: Int64? = nil, clusterName: String? = nil, clusterDesc: String? = nil, clusterLevel: String? = nil, autoUpgradeClusterLevel: AutoUpgradeClusterLevel? = nil, qgpuShareEnable: Bool? = nil) {
            self.clusterId = clusterId
            self.projectId = projectId
            self.clusterName = clusterName
            self.clusterDesc = clusterDesc
            self.clusterLevel = clusterLevel
            self.autoUpgradeClusterLevel = autoUpgradeClusterLevel
            self.qgpuShareEnable = qgpuShareEnable
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case projectId = "ProjectId"
            case clusterName = "ClusterName"
            case clusterDesc = "ClusterDesc"
            case clusterLevel = "ClusterLevel"
            case autoUpgradeClusterLevel = "AutoUpgradeClusterLevel"
            case qgpuShareEnable = "QGPUShareEnable"
        }
    }

    /// ModifyClusterAttribute返回参数结构体
    public struct ModifyClusterAttributeResponse: TCResponseModel {
        /// 集群所属项目
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectId: Int64?

        /// 集群名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterName: String?

        /// 集群描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterDesc: String?

        /// 集群等级
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterLevel: String?

        /// 自动变配集群等级
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let autoUpgradeClusterLevel: AutoUpgradeClusterLevel?

        /// 是否开启QGPU共享
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let qgpuShareEnable: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case clusterName = "ClusterName"
            case clusterDesc = "ClusterDesc"
            case clusterLevel = "ClusterLevel"
            case autoUpgradeClusterLevel = "AutoUpgradeClusterLevel"
            case qgpuShareEnable = "QGPUShareEnable"
            case requestId = "RequestId"
        }
    }

    /// 修改集群属性
    @inlinable
    public func modifyClusterAttribute(_ input: ModifyClusterAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyClusterAttributeResponse > {
        self.client.execute(action: "ModifyClusterAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改集群属性
    @inlinable
    public func modifyClusterAttribute(_ input: ModifyClusterAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterAttributeResponse {
        try await self.client.execute(action: "ModifyClusterAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改集群属性
    @inlinable
    public func modifyClusterAttribute(clusterId: String, projectId: Int64? = nil, clusterName: String? = nil, clusterDesc: String? = nil, clusterLevel: String? = nil, autoUpgradeClusterLevel: AutoUpgradeClusterLevel? = nil, qgpuShareEnable: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyClusterAttributeResponse > {
        self.modifyClusterAttribute(ModifyClusterAttributeRequest(clusterId: clusterId, projectId: projectId, clusterName: clusterName, clusterDesc: clusterDesc, clusterLevel: clusterLevel, autoUpgradeClusterLevel: autoUpgradeClusterLevel, qgpuShareEnable: qgpuShareEnable), logger: logger, on: eventLoop)
    }

    /// 修改集群属性
    @inlinable
    public func modifyClusterAttribute(clusterId: String, projectId: Int64? = nil, clusterName: String? = nil, clusterDesc: String? = nil, clusterLevel: String? = nil, autoUpgradeClusterLevel: AutoUpgradeClusterLevel? = nil, qgpuShareEnable: Bool? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterAttributeResponse {
        try await self.modifyClusterAttribute(ModifyClusterAttributeRequest(clusterId: clusterId, projectId: projectId, clusterName: clusterName, clusterDesc: clusterDesc, clusterLevel: clusterLevel, autoUpgradeClusterLevel: autoUpgradeClusterLevel, qgpuShareEnable: qgpuShareEnable), logger: logger, on: eventLoop)
    }
}
