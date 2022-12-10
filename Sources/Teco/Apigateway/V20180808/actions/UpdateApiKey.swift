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

extension Apigateway {
    /// 更换密钥
    ///
    /// 本接口（UpdateApiKey）用于更换用户已创建的一对 API 密钥。
    @inlinable
    public func updateApiKey(_ input: UpdateApiKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateApiKeyResponse > {
        self.client.execute(action: "UpdateApiKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更换密钥
    ///
    /// 本接口（UpdateApiKey）用于更换用户已创建的一对 API 密钥。
    @inlinable
    public func updateApiKey(_ input: UpdateApiKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiKeyResponse {
        try await self.client.execute(action: "UpdateApiKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateApiKey请求参数结构体
    public struct UpdateApiKeyRequest: TCRequestModel {
        /// 待更换的密钥 ID。
        public let accessKeyId: String
        
        /// 待更换的密钥 Key，更新自定义密钥时，该字段为必传。长度10 - 50字符，包括字母、数字、英文下划线。
        public let accessKeySecret: String?
        
        public init (accessKeyId: String, accessKeySecret: String?) {
            self.accessKeyId = accessKeyId
            self.accessKeySecret = accessKeySecret
        }
        
        enum CodingKeys: String, CodingKey {
            case accessKeyId = "AccessKeyId"
            case accessKeySecret = "AccessKeySecret"
        }
    }
    
    /// UpdateApiKey返回参数结构体
    public struct UpdateApiKeyResponse: TCResponseModel {
        /// 更换后的密钥详情。
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