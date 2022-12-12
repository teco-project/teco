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

extension Tdid {
    /// QueryPolicy请求参数结构体
    public struct QueryPolicyRequest: TCRequestModel {
        /// policy索引
        public let policyIndex: Int64
        
        public init (policyIndex: Int64) {
            self.policyIndex = policyIndex
        }
        
        enum CodingKeys: String, CodingKey {
            case policyIndex = "PolicyIndex"
        }
    }
    
    /// QueryPolicy返回参数结构体
    public struct QueryPolicyResponse: TCResponseModel {
        /// 披露策略索引
        public let id: UInt64
        
        /// 披露策略ID
        public let policyId: UInt64
        
        /// 凭证模板ID
        public let cptId: UInt64
        
        /// 披露策略的具体信息
        public let policyData: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case policyId = "PolicyId"
            case cptId = "CptId"
            case policyData = "PolicyData"
            case requestId = "RequestId"
        }
    }
    
    /// 披露策略Policy查看
    @inlinable
    public func queryPolicy(_ input: QueryPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryPolicyResponse > {
        self.client.execute(action: "QueryPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 披露策略Policy查看
    @inlinable
    public func queryPolicy(_ input: QueryPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryPolicyResponse {
        try await self.client.execute(action: "QueryPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
