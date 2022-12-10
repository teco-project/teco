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

extension Apigateway {
    /// 创建密钥
    ///
    /// 本接口（CreateApiKey）用于创建一对新的 API 密钥。
    @inlinable
    public func createApiKey(_ input: CreateApiKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateApiKeyResponse > {
        self.client.execute(action: "CreateApiKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建密钥
    ///
    /// 本接口（CreateApiKey）用于创建一对新的 API 密钥。
    @inlinable
    public func createApiKey(_ input: CreateApiKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateApiKeyResponse {
        try await self.client.execute(action: "CreateApiKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateApiKey请求参数结构体
    public struct CreateApiKeyRequest: TCRequestModel {
        /// 用户自定义密钥名称。
        public let secretName: String
        
        /// 密钥类型，支持 auto 和 manual（自定义密钥），默认为 auto。
        public let accessKeyType: String?
        
        /// 用户自定义密钥 ID，AccessKeyType 为 manual 时必传。长度为5 - 50字符，由字母、数字、英文下划线组成。
        public let accessKeyId: String?
        
        /// 用户自定义密钥 Key，AccessKeyType 为 manual 时必传。长度为10 - 50字符，由字母、数字、英文下划线。
        public let accessKeySecret: String?
        
        public init (secretName: String, accessKeyType: String?, accessKeyId: String?, accessKeySecret: String?) {
            self.secretName = secretName
            self.accessKeyType = accessKeyType
            self.accessKeyId = accessKeyId
            self.accessKeySecret = accessKeySecret
        }
        
        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case accessKeyType = "AccessKeyType"
            case accessKeyId = "AccessKeyId"
            case accessKeySecret = "AccessKeySecret"
        }
    }
    
    /// CreateApiKey返回参数结构体
    public struct CreateApiKeyResponse: TCResponseModel {
        /// 新增的密钥详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiKey
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
