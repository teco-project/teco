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
    /// 查询边缘集群详情
    ///
    /// 查询边缘集群详情
    @inlinable
    public func describeEdgeUnitCloud(_ input: DescribeEdgeUnitCloudRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEdgeUnitCloudResponse > {
        self.client.execute(action: "DescribeEdgeUnitCloud", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询边缘集群详情
    ///
    /// 查询边缘集群详情
    @inlinable
    public func describeEdgeUnitCloud(_ input: DescribeEdgeUnitCloudRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitCloudResponse {
        try await self.client.execute(action: "DescribeEdgeUnitCloud", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEdgeUnitCloud请求参数结构体
    public struct DescribeEdgeUnitCloudRequest: TCRequestModel {
        /// 边缘集群ID
        public let edgeUnitId: UInt64
        
        public init (edgeUnitId: UInt64) {
            self.edgeUnitId = edgeUnitId
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
        }
    }
    
    /// DescribeEdgeUnitCloud返回参数结构体
    public struct DescribeEdgeUnitCloudResponse: TCResponseModel {
        /// 边缘集群名称
        public let name: String
        
        /// 描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?
        
        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?
        
        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?
        
        /// 集群最后探活时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveTime: String?
        
        /// 集群状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let masterStatus: String?
        
        /// 版本号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let k8sVersion: String?
        
        /// pod cidr
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let podCIDR: String?
        
        /// service cidr
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceCIDR: String?
        
        /// 集群内网访问地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let apiServerAddress: String?
        
        /// 集群外网访问地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let apiServerExposeAddress: String?
        
        /// 用户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uid: String?
        
        /// 集群ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let unitID: UInt64?
        
        /// 集群标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cluster: String?
        
        /// 节点统计
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let node: EdgeUnitStatisticItem
        
        /// 工作负载统计
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let workload: EdgeUnitStatisticItem
        
        /// Grid应用统计
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let grid: EdgeUnitStatisticItem
        
        /// 设备统计
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subDevice: EdgeUnitStatisticItem
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case liveTime = "LiveTime"
            case masterStatus = "MasterStatus"
            case k8sVersion = "K8sVersion"
            case podCIDR = "PodCIDR"
            case serviceCIDR = "ServiceCIDR"
            case apiServerAddress = "APIServerAddress"
            case apiServerExposeAddress = "APIServerExposeAddress"
            case uid = "UID"
            case unitID = "UnitID"
            case cluster = "Cluster"
            case node = "Node"
            case workload = "Workload"
            case grid = "Grid"
            case subDevice = "SubDevice"
            case requestId = "RequestId"
        }
    }
}