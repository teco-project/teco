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
    /// 绑定鉴权策略到用户
    ///
    /// 绑定鉴权策略到用户
    @inlinable
    public func attachUserPolicy(_ input: AttachUserPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AttachUserPolicyResponse > {
        self.client.execute(action: "AttachUserPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 绑定鉴权策略到用户
    ///
    /// 绑定鉴权策略到用户
    @inlinable
    public func attachUserPolicy(_ input: AttachUserPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AttachUserPolicyResponse {
        try await self.client.execute(action: "AttachUserPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AttachUserPolicy请求参数结构体
    public struct AttachUserPolicyRequest: TCRequestModel {
        /// 用户Id，和子用户uin相同，需要先使用CreateUser接口创建用户。可以使用DescribeUsers接口查看。
        public let userId: String
        
        /// 鉴权策略集合
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
    
    /// AttachUserPolicy返回参数结构体
    public struct AttachUserPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}