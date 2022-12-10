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

extension Iecp {
    /// 查询指定Grid下应用的Yaml
    @inlinable
    public func describeEdgeUnitDeployGridItemYaml(_ input: DescribeEdgeUnitDeployGridItemYamlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeEdgeUnitDeployGridItemYamlResponse > {
        self.client.execute(action: "DescribeEdgeUnitDeployGridItemYaml", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询指定Grid下应用的Yaml
    @inlinable
    public func describeEdgeUnitDeployGridItemYaml(_ input: DescribeEdgeUnitDeployGridItemYamlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEdgeUnitDeployGridItemYamlResponse {
        try await self.client.execute(action: "DescribeEdgeUnitDeployGridItemYaml", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeEdgeUnitDeployGridItemYaml请求参数结构体
    public struct DescribeEdgeUnitDeployGridItemYamlRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64
        
        /// 负载类型（StatefulSetGrid｜DeploymentGrid）
        public let workloadKind: String
        
        /// Grid部署项名称
        public let gridItemName: String
        
        /// 命名空间，默认default
        public let namespace: String?
        
        public init (edgeUnitId: UInt64, workloadKind: String, gridItemName: String, namespace: String?) {
            self.edgeUnitId = edgeUnitId
            self.workloadKind = workloadKind
            self.gridItemName = gridItemName
            self.namespace = namespace
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case workloadKind = "WorkloadKind"
            case gridItemName = "GridItemName"
            case namespace = "Namespace"
        }
    }
    
    /// DescribeEdgeUnitDeployGridItemYaml返回参数结构体
    public struct DescribeEdgeUnitDeployGridItemYamlResponse: TCResponseModel {
        /// yaml，base64编码字符串
        public let yaml: String
        
        /// 对应类型的副本数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let replicas: [Int64]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case yaml = "Yaml"
            case replicas = "Replicas"
            case requestId = "RequestId"
        }
    }
}
