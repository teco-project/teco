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

extension Dayu {
    /// 创建CC自定义策略
    @inlinable
    public func createCCSelfDefinePolicy(_ input: CreateCCSelfDefinePolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCCSelfDefinePolicyResponse > {
        self.client.execute(action: "CreateCCSelfDefinePolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建CC自定义策略
    @inlinable
    public func createCCSelfDefinePolicy(_ input: CreateCCSelfDefinePolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCCSelfDefinePolicyResponse {
        try await self.client.execute(action: "CreateCCSelfDefinePolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateCCSelfDefinePolicy请求参数结构体
    public struct CreateCCSelfDefinePolicyRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String
        
        /// 资源ID
        public let id: String
        
        /// CC策略描述
        public let policy: CCPolicy
        
        public init (business: String, id: String, policy: CCPolicy) {
            self.business = business
            self.id = id
            self.policy = policy
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case id = "Id"
            case policy = "Policy"
        }
    }
    
    /// CreateCCSelfDefinePolicy返回参数结构体
    public struct CreateCCSelfDefinePolicyResponse: TCResponseModel {
        /// 成功码
        public let success: SuccessCode
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case success = "Success"
            case requestId = "RequestId"
        }
    }
}
