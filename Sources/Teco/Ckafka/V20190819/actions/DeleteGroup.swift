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

extension Ckafka {
    /// DeleteGroup请求参数结构体
    public struct DeleteGroupRequest: TCRequestModel {
        /// 实例Id
        public let instanceId: String
        
        /// 消费分组
        public let group: String
        
        public init (instanceId: String, group: String) {
            self.instanceId = instanceId
            self.group = group
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case group = "Group"
        }
    }
    
    /// DeleteGroup返回参数结构体
    public struct DeleteGroupResponse: TCResponseModel {
        /// 返回结果
        public let result: JgwOperateResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 删除消费组
    @inlinable
    public func deleteGroup(_ input: DeleteGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteGroupResponse > {
        self.client.execute(action: "DeleteGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除消费组
    @inlinable
    public func deleteGroup(_ input: DeleteGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGroupResponse {
        try await self.client.execute(action: "DeleteGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
