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

extension Ckafka {
    /// 取消授权token
    ///
    /// 取消授权token
    @inlinable
    public func cancelAuthorizationToken(_ input: CancelAuthorizationTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CancelAuthorizationTokenResponse > {
        self.client.execute(action: "CancelAuthorizationToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 取消授权token
    ///
    /// 取消授权token
    @inlinable
    public func cancelAuthorizationToken(_ input: CancelAuthorizationTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelAuthorizationTokenResponse {
        try await self.client.execute(action: "CancelAuthorizationToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CancelAuthorizationToken请求参数结构体
    public struct CancelAuthorizationTokenRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 用户
        public let user: String
        
        /// token串
        public let tokens: String
        
        public init (instanceId: String, user: String, tokens: String) {
            self.instanceId = instanceId
            self.user = user
            self.tokens = tokens
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case user = "User"
            case tokens = "Tokens"
        }
    }
    
    /// CancelAuthorizationToken返回参数结构体
    public struct CancelAuthorizationTokenResponse: TCResponseModel {
        /// 0 成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}