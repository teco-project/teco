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

extension Cam {
    /// GetUserPermissionBoundary请求参数结构体
    public struct GetUserPermissionBoundaryRequest: TCRequestModel {
        /// 子账号Uin
        public let targetUin: Int64
        
        public init (targetUin: Int64) {
            self.targetUin = targetUin
        }
        
        enum CodingKeys: String, CodingKey {
            case targetUin = "TargetUin"
        }
    }
    
    /// GetUserPermissionBoundary返回参数结构体
    public struct GetUserPermissionBoundaryResponse: TCResponseModel {
        /// 策略ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyId: Int64?
        
        /// 策略名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyName: String?
        
        /// 策略语法
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyDocument: String?
        
        /// 策略类型：1.自定义策略，2.预设策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyType: Int64?
        
        /// 创建方式：1.按产品功能或项目权限创建，2.按策略语法创建，3.按策略生成器创建，4.按标签授权创建，5.按权限边界规则创建
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createMode: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case policyDocument = "PolicyDocument"
            case policyType = "PolicyType"
            case createMode = "CreateMode"
            case requestId = "RequestId"
        }
    }
    
    /// 获取用户权限边界
    @inlinable
    public func getUserPermissionBoundary(_ input: GetUserPermissionBoundaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetUserPermissionBoundaryResponse > {
        self.client.execute(action: "GetUserPermissionBoundary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取用户权限边界
    @inlinable
    public func getUserPermissionBoundary(_ input: GetUserPermissionBoundaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUserPermissionBoundaryResponse {
        try await self.client.execute(action: "GetUserPermissionBoundary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
