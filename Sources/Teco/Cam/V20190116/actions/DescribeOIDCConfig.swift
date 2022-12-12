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
    /// DescribeOIDCConfig请求参数结构体
    public struct DescribeOIDCConfigRequest: TCRequestModel {
        /// 名称
        public let name: String
        
        public init (name: String) {
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }
    
    /// DescribeOIDCConfig返回参数结构体
    public struct DescribeOIDCConfigResponse: TCResponseModel {
        /// 身份提供商类型 11角色身份提供商
        public let providerType: UInt64
        
        /// 身份提供商URL
        public let identityUrl: String
        
        /// 签名公钥
        public let identityKey: String
        
        /// 客户端id
        public let clientId: [String]
        
        /// 状态：0:未设置，11:已开启，2:已禁用
        public let status: UInt64
        
        /// 描述
        public let description: String
        
        /// 名称
        public let name: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case providerType = "ProviderType"
            case identityUrl = "IdentityUrl"
            case identityKey = "IdentityKey"
            case clientId = "ClientId"
            case status = "Status"
            case description = "Description"
            case name = "Name"
            case requestId = "RequestId"
        }
    }
    
    /// 查询角色OIDC配置
    @inlinable
    public func describeOIDCConfig(_ input: DescribeOIDCConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOIDCConfigResponse > {
        self.client.execute(action: "DescribeOIDCConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询角色OIDC配置
    @inlinable
    public func describeOIDCConfig(_ input: DescribeOIDCConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOIDCConfigResponse {
        try await self.client.execute(action: "DescribeOIDCConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
