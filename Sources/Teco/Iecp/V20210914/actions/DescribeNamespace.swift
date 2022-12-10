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
    /// 获取命名空间
    @inlinable
    public func describeNamespace(_ input: DescribeNamespaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNamespaceResponse > {
        self.client.execute(action: "DescribeNamespace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取命名空间
    @inlinable
    public func describeNamespace(_ input: DescribeNamespaceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespaceResponse {
        try await self.client.execute(action: "DescribeNamespace", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeNamespace请求参数结构体
    public struct DescribeNamespaceRequest: TCRequestModel {
        /// 单元ID
        public let edgeUnitID: UInt64
        
        /// 命名空间名
        public let namespace: String
        
        public init (edgeUnitID: UInt64, namespace: String) {
            self.edgeUnitID = edgeUnitID
            self.namespace = namespace
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitID = "EdgeUnitID"
            case namespace = "Namespace"
        }
    }
    
    /// DescribeNamespace返回参数结构体
    public struct DescribeNamespaceResponse: TCResponseModel {
        /// 命名空间名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let namespace: String?
        
        /// 状态 (Active|Terminating)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?
        
        /// 描述信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?
        
        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?
        
        /// 是否保护-不允许删除
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let protected: Bool?
        
        /// Yaml文件格式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let yaml: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case namespace = "Namespace"
            case status = "Status"
            case description = "Description"
            case createTime = "CreateTime"
            case protected = "Protected"
            case yaml = "Yaml"
            case requestId = "RequestId"
        }
    }
}
