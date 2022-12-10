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

extension Postgres {
    /// 添加实例网络
    ///
    /// 可对实例进行网络的添加操作。
    @inlinable
    public func createDBInstanceNetworkAccess(_ input: CreateDBInstanceNetworkAccessRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDBInstanceNetworkAccessResponse > {
        self.client.execute(action: "CreateDBInstanceNetworkAccess", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加实例网络
    ///
    /// 可对实例进行网络的添加操作。
    @inlinable
    public func createDBInstanceNetworkAccess(_ input: CreateDBInstanceNetworkAccessRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceNetworkAccessResponse {
        try await self.client.execute(action: "CreateDBInstanceNetworkAccess", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateDBInstanceNetworkAccess请求参数结构体
    public struct CreateDBInstanceNetworkAccessRequest: TCRequestModel {
        /// 实例ID，形如：postgres-6bwgamo3。
        public let dbInstanceId: String
        
        /// 私有网络统一 ID。
        public let vpcId: String
        
        /// 子网ID。
        public let subnetId: String
        
        /// 是否指定分配vip true-指定分配  false-自动分配。
        public let isAssignVip: Bool
        
        /// 目标VIP地址。
        public let vip: String?
        
        public init (dbInstanceId: String, vpcId: String, subnetId: String, isAssignVip: Bool, vip: String?) {
            self.dbInstanceId = dbInstanceId
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.isAssignVip = isAssignVip
            self.vip = vip
        }
        
        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case isAssignVip = "IsAssignVip"
            case vip = "Vip"
        }
    }
    
    /// CreateDBInstanceNetworkAccess返回参数结构体
    public struct CreateDBInstanceNetworkAccessResponse: TCResponseModel {
        /// 流程ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowId: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
}