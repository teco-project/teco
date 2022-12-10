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

extension Gaap {
    /// 关闭安全策略
    @inlinable
    public func closeSecurityPolicy(_ input: CloseSecurityPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CloseSecurityPolicyResponse > {
        self.client.execute(action: "CloseSecurityPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 关闭安全策略
    @inlinable
    public func closeSecurityPolicy(_ input: CloseSecurityPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseSecurityPolicyResponse {
        try await self.client.execute(action: "CloseSecurityPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CloseSecurityPolicy请求参数结构体
    public struct CloseSecurityPolicyRequest: TCRequestModel {
        /// 通道ID
        public let proxyId: String?
        
        /// 安全组策略ID
        public let policyId: String?
        
        public init (proxyId: String?, policyId: String?) {
            self.proxyId = proxyId
            self.policyId = policyId
        }
        
        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case policyId = "PolicyId"
        }
    }
    
    /// CloseSecurityPolicy返回参数结构体
    public struct CloseSecurityPolicyResponse: TCResponseModel {
        /// 异步流程ID，可以通过DescribeAsyncTaskStatus 查询流程执行进展和状态
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}
