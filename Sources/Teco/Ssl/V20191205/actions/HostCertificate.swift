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

extension Ssl {
    /// 云资源托管
    @inlinable
    public func hostCertificate(_ input: HostCertificateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < HostCertificateResponse > {
        self.client.execute(action: "HostCertificate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云资源托管
    @inlinable
    public func hostCertificate(_ input: HostCertificateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HostCertificateResponse {
        try await self.client.execute(action: "HostCertificate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// HostCertificate请求参数结构体
    public struct HostCertificateRequest: TCRequestModel {
        /// 证书ID
        public let certificateId: String
        
        /// 资源类型：目前仅限于CLB,CDN
        public let resourceType: [String]?
        
        public init (certificateId: String, resourceType: [String]?) {
            self.certificateId = certificateId
            self.resourceType = resourceType
        }
        
        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case resourceType = "ResourceType"
        }
    }
    
    /// HostCertificate返回参数结构体
    public struct HostCertificateResponse: TCResponseModel {
        /// 云资源配置详情
        public let certHostingInfo: CertHostingInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case certHostingInfo = "CertHostingInfo"
            case requestId = "RequestId"
        }
    }
}
