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
    /// 查询用户的资源限制
    @inlinable
    public func describeYeheResourceLimit(_ input: DescribeYeheResourceLimitRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeYeheResourceLimitResponse > {
        self.client.execute(action: "DescribeYeheResourceLimit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询用户的资源限制
    @inlinable
    public func describeYeheResourceLimit(_ input: DescribeYeheResourceLimitRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeYeheResourceLimitResponse {
        try await self.client.execute(action: "DescribeYeheResourceLimit", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeYeheResourceLimit请求参数结构体
    public struct DescribeYeheResourceLimitRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DescribeYeheResourceLimit返回参数结构体
    public struct DescribeYeheResourceLimitResponse: TCResponseModel {
        /// 用户父账号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uin: String?
        
        /// 允许创建的节点数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createNodeLimit: UInt64?
        
        /// 允许创建的集群数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createClusterLimit: UInt64?
        
        /// 是否有监控开启权限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enablePermMonitor: Bool?
        
        /// 节点是否有admin的所有权限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let enablePermAdminNode: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case createNodeLimit = "CreateNodeLimit"
            case createClusterLimit = "CreateClusterLimit"
            case enablePermMonitor = "EnablePermMonitor"
            case enablePermAdminNode = "EnablePermAdminNode"
            case requestId = "RequestId"
        }
    }
}
