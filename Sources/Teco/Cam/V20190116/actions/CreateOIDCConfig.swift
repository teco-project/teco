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
    /// CreateOIDCConfig请求参数结构体
    public struct CreateOIDCConfigRequest: TCRequestModel {
        /// 身份提供商URL
        public let identityUrl: String
        
        /// 签名公钥，需要base64
        public let identityKey: String
        
        /// 客户端ID
        public let clientId: [String]
        
        /// 名称
        public let name: String
        
        /// 描述
        public let description: String?
        
        public init (identityUrl: String, identityKey: String, clientId: [String], name: String, description: String? = nil) {
            self.identityUrl = identityUrl
            self.identityKey = identityKey
            self.clientId = clientId
            self.name = name
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case identityUrl = "IdentityUrl"
            case identityKey = "IdentityKey"
            case clientId = "ClientId"
            case name = "Name"
            case description = "Description"
        }
    }
    
    /// CreateOIDCConfig返回参数结构体
    public struct CreateOIDCConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 创建角色OIDC配置
    @inlinable
    public func createOIDCConfig(_ input: CreateOIDCConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateOIDCConfigResponse > {
        self.client.execute(action: "CreateOIDCConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建角色OIDC配置
    @inlinable
    public func createOIDCConfig(_ input: CreateOIDCConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOIDCConfigResponse {
        try await self.client.execute(action: "CreateOIDCConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
