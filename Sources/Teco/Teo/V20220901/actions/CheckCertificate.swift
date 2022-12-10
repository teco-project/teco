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

extension Teo {
    /// 校验证书
    ///
    /// 校验证书
    @inlinable
    public func checkCertificate(_ input: CheckCertificateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CheckCertificateResponse > {
        self.client.execute(action: "CheckCertificate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 校验证书
    ///
    /// 校验证书
    @inlinable
    public func checkCertificate(_ input: CheckCertificateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckCertificateResponse {
        try await self.client.execute(action: "CheckCertificate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CheckCertificate请求参数结构体
    public struct CheckCertificateRequest: TCRequestModel {
        /// 证书内容。
        public let certificate: String
        
        /// 私钥内容。
        public let privateKey: String
        
        public init (certificate: String, privateKey: String) {
            self.certificate = certificate
            self.privateKey = privateKey
        }
        
        enum CodingKeys: String, CodingKey {
            case certificate = "Certificate"
            case privateKey = "PrivateKey"
        }
    }
    
    /// CheckCertificate返回参数结构体
    public struct CheckCertificateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}