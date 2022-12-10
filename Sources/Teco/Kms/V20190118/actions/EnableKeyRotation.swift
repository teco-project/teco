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

extension Kms {
    /// 开启密钥轮换
    ///
    /// 对指定的CMK开启密钥轮换功能。
    @inlinable
    public func enableKeyRotation(_ input: EnableKeyRotationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < EnableKeyRotationResponse > {
        self.client.execute(action: "EnableKeyRotation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 开启密钥轮换
    ///
    /// 对指定的CMK开启密钥轮换功能。
    @inlinable
    public func enableKeyRotation(_ input: EnableKeyRotationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableKeyRotationResponse {
        try await self.client.execute(action: "EnableKeyRotation", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// EnableKeyRotation请求参数结构体
    public struct EnableKeyRotationRequest: TCRequestModel {
        /// CMK唯一标识符
        public let keyId: String
        
        public init (keyId: String) {
            self.keyId = keyId
        }
        
        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }
    
    /// EnableKeyRotation返回参数结构体
    public struct EnableKeyRotationResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}