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
    /// 修改实例名字
    ///
    /// 本接口（ModifyDBInstanceName）用于修改postgresql实例名字。
    @inlinable
    public func modifyDBInstanceName(_ input: ModifyDBInstanceNameRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDBInstanceNameResponse > {
        self.client.execute(action: "ModifyDBInstanceName", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改实例名字
    ///
    /// 本接口（ModifyDBInstanceName）用于修改postgresql实例名字。
    @inlinable
    public func modifyDBInstanceName(_ input: ModifyDBInstanceNameRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBInstanceNameResponse {
        try await self.client.execute(action: "ModifyDBInstanceName", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyDBInstanceName请求参数结构体
    public struct ModifyDBInstanceNameRequest: TCRequestModel {
        /// 数据库实例ID，形如postgres-6fego161
        public let dbInstanceId: String
        
        /// 新的数据库实例名字
        public let instanceName: String
        
        public init (dbInstanceId: String, instanceName: String) {
            self.dbInstanceId = dbInstanceId
            self.instanceName = instanceName
        }
        
        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case instanceName = "InstanceName"
        }
    }
    
    /// ModifyDBInstanceName返回参数结构体
    public struct ModifyDBInstanceNameResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}