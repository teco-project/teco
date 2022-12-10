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

extension Kms {
    /// 获取白盒解密密钥
    @inlinable
    public func describeWhiteBoxDecryptKey(_ input: DescribeWhiteBoxDecryptKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWhiteBoxDecryptKeyResponse > {
        self.client.execute(action: "DescribeWhiteBoxDecryptKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取白盒解密密钥
    @inlinable
    public func describeWhiteBoxDecryptKey(_ input: DescribeWhiteBoxDecryptKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWhiteBoxDecryptKeyResponse {
        try await self.client.execute(action: "DescribeWhiteBoxDecryptKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeWhiteBoxDecryptKey请求参数结构体
    public struct DescribeWhiteBoxDecryptKeyRequest: TCRequestModel {
        /// 白盒密钥的全局唯一标识符
        public let keyId: String
        
        public init (keyId: String) {
            self.keyId = keyId
        }
        
        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }
    
    /// DescribeWhiteBoxDecryptKey返回参数结构体
    public struct DescribeWhiteBoxDecryptKeyResponse: TCResponseModel {
        /// 白盒解密密钥，base64编码
        public let decryptKey: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case decryptKey = "DecryptKey"
            case requestId = "RequestId"
        }
    }
}
