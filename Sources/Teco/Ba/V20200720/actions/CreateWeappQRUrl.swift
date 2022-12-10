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

extension Ba {
    /// 创建渠道备案小程序二维码
    @inlinable
    public func createWeappQRUrl(_ input: CreateWeappQRUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateWeappQRUrlResponse > {
        self.client.execute(action: "CreateWeappQRUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建渠道备案小程序二维码
    @inlinable
    public func createWeappQRUrl(_ input: CreateWeappQRUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWeappQRUrlResponse {
        try await self.client.execute(action: "CreateWeappQRUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateWeappQRUrl请求参数结构体
    public struct CreateWeappQRUrlRequest: TCRequestModel {
        /// 代理角色临时密钥的Token
        public let sessionKey: String
        
        public init (sessionKey: String) {
            self.sessionKey = sessionKey
        }
        
        enum CodingKeys: String, CodingKey {
            case sessionKey = "SessionKey"
        }
    }
    
    /// CreateWeappQRUrl返回参数结构体
    public struct CreateWeappQRUrlResponse: TCResponseModel {
        /// 渠道备案小程序二维码
        public let url: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case url = "Url"
            case requestId = "RequestId"
        }
    }
}
