//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iecp {
    /// 创建边缘单元
    ///
    /// 创建边缘单元
    @inlinable
    public func createEdgeUnitCloud(_ input: CreateEdgeUnitCloudRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateEdgeUnitCloudResponse > {
        self.client.execute(action: "CreateEdgeUnitCloud", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建边缘单元
    ///
    /// 创建边缘单元
    @inlinable
    public func createEdgeUnitCloud(_ input: CreateEdgeUnitCloudRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEdgeUnitCloudResponse {
        try await self.client.execute(action: "CreateEdgeUnitCloud", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateEdgeUnitCloud请求参数结构体
    public struct CreateEdgeUnitCloudRequest: TCRequestModel {
        /// 集群名称，长度小于32
        public let name: String
        
        /// k8s版本，仅支持1.16.7 和 1.18.2
        public let k8sVersion: String
        
        /// 私有网络ID
        public let vpcId: String?
        
        /// 集群描述
        public let description: String?
        
        /// 集群pod cidr， 默认  10.1.0.0/16
        public let podCIDR: String?
        
        /// 集群service cidr, 默认 10.2.0.0/16
        public let serviceCIDR: String?
        
        /// 是否开启监控。目前内存中权限开启联系产品开通白名单
        public let openCloudMonitor: Bool?
        
        public init (name: String, k8sVersion: String, vpcId: String?, description: String?, podCIDR: String?, serviceCIDR: String?, openCloudMonitor: Bool?) {
            self.name = name
            self.k8sVersion = k8sVersion
            self.vpcId = vpcId
            self.description = description
            self.podCIDR = podCIDR
            self.serviceCIDR = serviceCIDR
            self.openCloudMonitor = openCloudMonitor
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case k8sVersion = "K8sVersion"
            case vpcId = "VpcId"
            case description = "Description"
            case podCIDR = "PodCIDR"
            case serviceCIDR = "ServiceCIDR"
            case openCloudMonitor = "OpenCloudMonitor"
        }
    }
    
    /// CreateEdgeUnitCloud返回参数结构体
    public struct CreateEdgeUnitCloudResponse: TCResponseModel {
        /// tke集群ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterId: String?
        
        /// IECP集群ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let edgeUnitId: UInt64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case edgeUnitId = "EdgeUnitId"
            case requestId = "RequestId"
        }
    }
}