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
    /// DeletePolicy请求参数结构体
    public struct DeletePolicyRequest: TCRequestModel {
        /// 数组，数组成员是策略 id，支持批量删除策略
        public let policyId: [UInt64]
        
        public init (policyId: [UInt64]) {
            self.policyId = policyId
        }
        
        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
        }
    }
    
    /// DeletePolicy返回参数结构体
    public struct DeletePolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除策略
    ///
    /// 本接口（DeletePolicy）可用于删除策略。
    @inlinable
    public func deletePolicy(_ input: DeletePolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeletePolicyResponse > {
        self.client.execute(action: "DeletePolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除策略
    ///
    /// 本接口（DeletePolicy）可用于删除策略。
    @inlinable
    public func deletePolicy(_ input: DeletePolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePolicyResponse {
        try await self.client.execute(action: "DeletePolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
