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

extension Mariadb {
    /// CloneAccount请求参数结构体
    public struct CloneAccountRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 源用户账户名
        public let srcUser: String
        
        /// 源用户HOST
        public let srcHost: String
        
        /// 目的用户账户名
        public let dstUser: String
        
        /// 目的用户HOST
        public let dstHost: String
        
        /// 目的用户账户描述
        public let dstDesc: String?
        
        public init (instanceId: String, srcUser: String, srcHost: String, dstUser: String, dstHost: String, dstDesc: String? = nil) {
            self.instanceId = instanceId
            self.srcUser = srcUser
            self.srcHost = srcHost
            self.dstUser = dstUser
            self.dstHost = dstHost
            self.dstDesc = dstDesc
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case srcUser = "SrcUser"
            case srcHost = "SrcHost"
            case dstUser = "DstUser"
            case dstHost = "DstHost"
            case dstDesc = "DstDesc"
        }
    }
    
    /// CloneAccount返回参数结构体
    public struct CloneAccountResponse: TCResponseModel {
        /// 异步任务流程ID。
        public let flowId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }
    
    /// 克隆实例账户
    ///
    /// 本接口（CloneAccount）用于克隆实例账户。
    @inlinable
    public func cloneAccount(_ input: CloneAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CloneAccountResponse > {
        self.client.execute(action: "CloneAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 克隆实例账户
    ///
    /// 本接口（CloneAccount）用于克隆实例账户。
    @inlinable
    public func cloneAccount(_ input: CloneAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneAccountResponse {
        try await self.client.execute(action: "CloneAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
