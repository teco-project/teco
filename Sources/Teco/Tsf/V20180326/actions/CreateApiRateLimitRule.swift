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

extension Tsf {
    /// 创建API限流规则
    @inlinable
    public func createApiRateLimitRule(_ input: CreateApiRateLimitRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateApiRateLimitRuleResponse > {
        self.client.execute(action: "CreateApiRateLimitRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建API限流规则
    @inlinable
    public func createApiRateLimitRule(_ input: CreateApiRateLimitRuleRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiRateLimitRuleResponse {
        try await self.client.execute(action: "CreateApiRateLimitRule", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateApiRateLimitRule请求参数结构体
    public struct CreateApiRateLimitRuleRequest: TCRequestModel {
        /// Api Id
        public let apiId: String
        
        /// qps值
        public let maxQps: UInt64
        
        /// 开启/禁用，enabled/disabled, 不传默认开启
        public let usableStatus: String?
        
        public init (apiId: String, maxQps: UInt64, usableStatus: String?) {
            self.apiId = apiId
            self.maxQps = maxQps
            self.usableStatus = usableStatus
        }
        
        enum CodingKeys: String, CodingKey {
            case apiId = "ApiId"
            case maxQps = "MaxQps"
            case usableStatus = "UsableStatus"
        }
    }
    
    /// CreateApiRateLimitRule返回参数结构体
    public struct CreateApiRateLimitRuleResponse: TCResponseModel {
        /// 是否成功
        public let result: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
