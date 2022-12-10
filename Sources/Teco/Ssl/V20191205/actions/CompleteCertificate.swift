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

extension Ssl {
    /// 主动触发证书验证
    ///
    /// 本接口（CompleteCertificate）用于主动触发证书验证。仅非DNSPod和Wotrus品牌证书支持使用此接口。
    @inlinable
    public func completeCertificate(_ input: CompleteCertificateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CompleteCertificateResponse > {
        self.client.execute(action: "CompleteCertificate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 主动触发证书验证
    ///
    /// 本接口（CompleteCertificate）用于主动触发证书验证。仅非DNSPod和Wotrus品牌证书支持使用此接口。
    @inlinable
    public func completeCertificate(_ input: CompleteCertificateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompleteCertificateResponse {
        try await self.client.execute(action: "CompleteCertificate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CompleteCertificate请求参数结构体
    public struct CompleteCertificateRequest: TCRequestModel {
        /// 证书ID
        public let certificateId: String
        
        public init (certificateId: String) {
            self.certificateId = certificateId
        }
        
        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
        }
    }
    
    /// CompleteCertificate返回参数结构体
    public struct CompleteCertificateResponse: TCResponseModel {
        /// 证书ID
        public let certificateId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case requestId = "RequestId"
        }
    }
}