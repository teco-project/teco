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

extension Teo {
    /// ModifyDefaultCertificate请求参数结构体
    public struct ModifyDefaultCertificateRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String
        
        /// 默认证书ID。
        public let certId: String?
        
        /// 证书状态，取值有：
        /// <li>deployed ：部署证书；</li>
        /// <li>disabled ：禁用证书。</li>失败状态下重新deployed即可重试。
        public let status: String?
        
        public init (zoneId: String, certId: String? = nil, status: String? = nil) {
            self.zoneId = zoneId
            self.certId = certId
            self.status = status
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case certId = "CertId"
            case status = "Status"
        }
    }
    
    /// ModifyDefaultCertificate返回参数结构体
    public struct ModifyDefaultCertificateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改默认证书状态
    @inlinable
    public func modifyDefaultCertificate(_ input: ModifyDefaultCertificateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDefaultCertificateResponse > {
        self.client.execute(action: "ModifyDefaultCertificate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改默认证书状态
    @inlinable
    public func modifyDefaultCertificate(_ input: ModifyDefaultCertificateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDefaultCertificateResponse {
        try await self.client.execute(action: "ModifyDefaultCertificate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
