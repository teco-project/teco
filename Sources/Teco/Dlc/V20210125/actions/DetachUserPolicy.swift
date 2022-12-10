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

extension Dlc {
    /// 解绑用户鉴权策略
    ///
    /// 解绑用户鉴权策略
    @inlinable
    public func detachUserPolicy(_ input: DetachUserPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DetachUserPolicyResponse > {
        self.client.execute(action: "DetachUserPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 解绑用户鉴权策略
    ///
    /// 解绑用户鉴权策略
    @inlinable
    public func detachUserPolicy(_ input: DetachUserPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachUserPolicyResponse {
        try await self.client.execute(action: "DetachUserPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DetachUserPolicy请求参数结构体
    public struct DetachUserPolicyRequest: TCRequestModel {
        /// 用户Id，和CAM侧Uin匹配
        public let userId: String
        
        /// 解绑的权限集合
        public let policySet: [Policy]?
        
        public init (userId: String, policySet: [Policy]?) {
            self.userId = userId
            self.policySet = policySet
        }
        
        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case policySet = "PolicySet"
        }
    }
    
    /// DetachUserPolicy返回参数结构体
    public struct DetachUserPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}