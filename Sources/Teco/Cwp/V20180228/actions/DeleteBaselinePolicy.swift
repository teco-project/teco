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

extension Cwp {
    /// DeleteBaselinePolicy请求参数结构体
    public struct DeleteBaselinePolicyRequest: TCRequestModel {
        /// 策略Id
        public let policyIds: [Int64]
        
        public init (policyIds: [Int64]) {
            self.policyIds = policyIds
        }
        
        enum CodingKeys: String, CodingKey {
            case policyIds = "PolicyIds"
        }
    }
    
    /// DeleteBaselinePolicy返回参数结构体
    public struct DeleteBaselinePolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除基线策略配置
    @inlinable
    public func deleteBaselinePolicy(_ input: DeleteBaselinePolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteBaselinePolicyResponse > {
        self.client.execute(action: "DeleteBaselinePolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除基线策略配置
    @inlinable
    public func deleteBaselinePolicy(_ input: DeleteBaselinePolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBaselinePolicyResponse {
        try await self.client.execute(action: "DeleteBaselinePolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
