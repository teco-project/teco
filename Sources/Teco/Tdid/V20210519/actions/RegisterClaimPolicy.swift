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

extension Tdid {
    /// 披露策略Policy注册
    ///
    /// 披露策略Policy注册
    @inlinable
    public func registerClaimPolicy(_ input: RegisterClaimPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RegisterClaimPolicyResponse > {
        self.client.execute(action: "RegisterClaimPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 披露策略Policy注册
    ///
    /// 披露策略Policy注册
    @inlinable
    public func registerClaimPolicy(_ input: RegisterClaimPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterClaimPolicyResponse {
        try await self.client.execute(action: "RegisterClaimPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RegisterClaimPolicy请求参数结构体
    public struct RegisterClaimPolicyRequest: TCRequestModel {
        /// Cpt索引
        public let cptIndex: UInt64
        
        /// 披露策略
        public let policy: String
        
        public init (cptIndex: UInt64, policy: String) {
            self.cptIndex = cptIndex
            self.policy = policy
        }
        
        enum CodingKeys: String, CodingKey {
            case cptIndex = "CptIndex"
            case policy = "Policy"
        }
    }
    
    /// RegisterClaimPolicy返回参数结构体
    public struct RegisterClaimPolicyResponse: TCResponseModel {
        /// 披露策略索引
        public let id: UInt64
        
        /// 披露策略ID
        public let policyId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case policyId = "PolicyId"
            case requestId = "RequestId"
        }
    }
}