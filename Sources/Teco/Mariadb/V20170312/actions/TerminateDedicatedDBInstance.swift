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

extension Mariadb {
    /// 销毁独享云数据库实例
    ///
    /// 本接口（TerminateDedicatedDBInstance）用于销毁已隔离的独享云数据库实例。
    @inlinable
    public func terminateDedicatedDBInstance(_ input: TerminateDedicatedDBInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < TerminateDedicatedDBInstanceResponse > {
        self.client.execute(action: "TerminateDedicatedDBInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 销毁独享云数据库实例
    ///
    /// 本接口（TerminateDedicatedDBInstance）用于销毁已隔离的独享云数据库实例。
    @inlinable
    public func terminateDedicatedDBInstance(_ input: TerminateDedicatedDBInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateDedicatedDBInstanceResponse {
        try await self.client.execute(action: "TerminateDedicatedDBInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// TerminateDedicatedDBInstance请求参数结构体
    public struct TerminateDedicatedDBInstanceRequest: TCRequestModel {
        /// 实例 Id，形如：tdsql-ow728lmc。
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// TerminateDedicatedDBInstance返回参数结构体
    public struct TerminateDedicatedDBInstanceResponse: TCResponseModel {
        /// 异步流程Id
        public let flowId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
}