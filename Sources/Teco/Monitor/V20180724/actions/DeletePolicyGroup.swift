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

extension Monitor {
    /// DeletePolicyGroup请求参数结构体
    public struct DeletePolicyGroupRequest: TCRequestModel {
        /// 固定值，为"monitor"
        public let module: String
        
        /// 策略组id
        public let groupId: [Int64]
        
        public init (module: String, groupId: [Int64]) {
            self.module = module
            self.groupId = groupId
        }
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case groupId = "GroupId"
        }
    }
    
    /// DeletePolicyGroup返回参数结构体
    public struct DeletePolicyGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除告警策略组
    @inlinable
    public func deletePolicyGroup(_ input: DeletePolicyGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeletePolicyGroupResponse > {
        self.client.execute(action: "DeletePolicyGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除告警策略组
    @inlinable
    public func deletePolicyGroup(_ input: DeletePolicyGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePolicyGroupResponse {
        try await self.client.execute(action: "DeletePolicyGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
