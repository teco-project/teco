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
    /// 解除绑定到用户的策略
    ///
    /// 本接口（DetachUserPolicy）可用于解除绑定到用户的策略。
    @inlinable
    public func detachUserPolicy(_ input: DetachUserPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DetachUserPolicyResponse > {
        self.client.execute(action: "DetachUserPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 解除绑定到用户的策略
    ///
    /// 本接口（DetachUserPolicy）可用于解除绑定到用户的策略。
    @inlinable
    public func detachUserPolicy(_ input: DetachUserPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachUserPolicyResponse {
        try await self.client.execute(action: "DetachUserPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DetachUserPolicy请求参数结构体
    public struct DetachUserPolicyRequest: TCRequestModel {
        /// 策略 id
        public let policyId: UInt64
        
        /// 子账号 uin
        public let detachUin: UInt64
        
        public init (policyId: UInt64, detachUin: UInt64) {
            self.policyId = policyId
            self.detachUin = detachUin
        }
        
        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case detachUin = "DetachUin"
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
