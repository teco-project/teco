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

extension Dayu {
    /// 删除DDoS高级策略
    ///
    /// 删除DDoS高级策略
    @inlinable
    public func deleteDDoSPolicy(_ input: DeleteDDoSPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteDDoSPolicyResponse > {
        self.client.execute(action: "DeleteDDoSPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除DDoS高级策略
    ///
    /// 删除DDoS高级策略
    @inlinable
    public func deleteDDoSPolicy(_ input: DeleteDDoSPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDDoSPolicyResponse {
        try await self.client.execute(action: "DeleteDDoSPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteDDoSPolicy请求参数结构体
    public struct DeleteDDoSPolicyRequest: TCRequestModel {
        /// 大禹子产品代号（bgpip表示高防IP；bgp表示独享包；bgp-multip表示共享包；net表示高防IP专业版）
        public let business: String
        
        /// 策略ID
        public let policyId: String
        
        public init (business: String, policyId: String) {
            self.business = business
            self.policyId = policyId
        }
        
        enum CodingKeys: String, CodingKey {
            case business = "Business"
            case policyId = "PolicyId"
        }
    }
    
    /// DeleteDDoSPolicy返回参数结构体
    public struct DeleteDDoSPolicyResponse: TCResponseModel {
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