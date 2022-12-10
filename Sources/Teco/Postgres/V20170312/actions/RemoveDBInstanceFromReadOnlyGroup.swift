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
    /// 将只读实例从只读组中移除
    ///
    /// 本接口（RemoveDBInstanceFromReadOnlyGroup）用户将只读实例从只读组中移除
    @inlinable
    public func removeDBInstanceFromReadOnlyGroup(_ input: RemoveDBInstanceFromReadOnlyGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RemoveDBInstanceFromReadOnlyGroupResponse > {
        self.client.execute(action: "RemoveDBInstanceFromReadOnlyGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 将只读实例从只读组中移除
    ///
    /// 本接口（RemoveDBInstanceFromReadOnlyGroup）用户将只读实例从只读组中移除
    @inlinable
    public func removeDBInstanceFromReadOnlyGroup(_ input: RemoveDBInstanceFromReadOnlyGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RemoveDBInstanceFromReadOnlyGroupResponse {
        try await self.client.execute(action: "RemoveDBInstanceFromReadOnlyGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RemoveDBInstanceFromReadOnlyGroup请求参数结构体
    public struct RemoveDBInstanceFromReadOnlyGroupRequest: TCRequestModel {
        /// 实例ID
        public let dbInstanceId: String
        
        /// 只读组ID
        public let readOnlyGroupId: String
        
        public init (dbInstanceId: String, readOnlyGroupId: String) {
            self.dbInstanceId = dbInstanceId
            self.readOnlyGroupId = readOnlyGroupId
        }
        
        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case readOnlyGroupId = "ReadOnlyGroupId"
        }
    }
    
    /// RemoveDBInstanceFromReadOnlyGroup返回参数结构体
    public struct RemoveDBInstanceFromReadOnlyGroupResponse: TCResponseModel {
        /// 流程ID
        public let flowId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
}