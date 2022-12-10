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

extension Yunjing {
    /// 取消信任恶意请求
    ///
    /// 本接口 (UntrustMaliciousRequest) 用于取消信任恶意请求。
    @inlinable
    public func untrustMaliciousRequest(_ input: UntrustMaliciousRequestRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UntrustMaliciousRequestResponse > {
        self.client.execute(action: "UntrustMaliciousRequest", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 取消信任恶意请求
    ///
    /// 本接口 (UntrustMaliciousRequest) 用于取消信任恶意请求。
    @inlinable
    public func untrustMaliciousRequest(_ input: UntrustMaliciousRequestRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UntrustMaliciousRequestResponse {
        try await self.client.execute(action: "UntrustMaliciousRequest", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UntrustMaliciousRequest请求参数结构体
    public struct UntrustMaliciousRequestRequest: TCRequestModel {
        /// 受信任记录ID。
        public let id: UInt64
        
        public init (id: UInt64) {
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }
    
    /// UntrustMaliciousRequest返回参数结构体
    public struct UntrustMaliciousRequestResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}