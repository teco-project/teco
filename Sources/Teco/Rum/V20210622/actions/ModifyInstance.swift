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

extension Rum {
    /// 修改实例信息
    @inlinable
    public func modifyInstance(_ input: ModifyInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyInstanceResponse > {
        self.client.execute(action: "ModifyInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改实例信息
    @inlinable
    public func modifyInstance(_ input: ModifyInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceResponse {
        try await self.client.execute(action: "ModifyInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyInstance请求参数结构体
    public struct ModifyInstanceRequest: TCRequestModel {
        /// 要修改的实例id
        public let instanceId: String
        
        /// 新的实例名称(长度最大不超过255)
        public let instanceName: String?
        
        /// 新的实例描述(长度最大不超过1024)
        public let instanceDesc: String?
        
        public init (instanceId: String, instanceName: String?, instanceDesc: String?) {
            self.instanceId = instanceId
            self.instanceName = instanceName
            self.instanceDesc = instanceDesc
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case instanceDesc = "InstanceDesc"
        }
    }
    
    /// ModifyInstance返回参数结构体
    public struct ModifyInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
