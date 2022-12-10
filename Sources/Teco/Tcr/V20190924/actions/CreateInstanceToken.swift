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

extension Tcr {
    /// 创建实例访问凭证
    ///
    /// 创建实例的临时或长期访问凭证
    @inlinable
    public func createInstanceToken(_ input: CreateInstanceTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateInstanceTokenResponse > {
        self.client.execute(action: "CreateInstanceToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建实例访问凭证
    ///
    /// 创建实例的临时或长期访问凭证
    @inlinable
    public func createInstanceToken(_ input: CreateInstanceTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceTokenResponse {
        try await self.client.execute(action: "CreateInstanceToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateInstanceToken请求参数结构体
    public struct CreateInstanceTokenRequest: TCRequestModel {
        /// 实例Id
        public let registryId: String
        
        /// 访问凭证类型，longterm 为长期访问凭证，temp 为临时访问凭证，默认是临时访问凭证，有效期1小时
        public let tokenType: String?
        
        /// 长期访问凭证描述信息
        public let desc: String?
        
        public init (registryId: String, tokenType: String?, desc: String?) {
            self.registryId = registryId
            self.tokenType = tokenType
            self.desc = desc
        }
        
        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case tokenType = "TokenType"
            case desc = "Desc"
        }
    }
    
    /// CreateInstanceToken返回参数结构体
    public struct CreateInstanceTokenResponse: TCResponseModel {
        /// 用户名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let username: String?
        
        /// 访问凭证
        public let token: String
        
        /// 访问凭证过期时间戳，是一个时间戳数字，无单位
        public let expTime: Int64
        
        /// 长期凭证的TokenId，短期凭证没有TokenId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tokenId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case username = "Username"
            case token = "Token"
            case expTime = "ExpTime"
            case tokenId = "TokenId"
            case requestId = "RequestId"
        }
    }
}
