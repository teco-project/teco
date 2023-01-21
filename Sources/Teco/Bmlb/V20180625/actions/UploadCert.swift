//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Bmlb {
    /// UploadCert请求参数结构体
    public struct UploadCertRequest: TCRequestModel {
        /// 证书类型，可选值：CA，SVR。
        public let certType: String

        /// 证书内容。
        public let cert: String

        /// 证书别名。
        public let alias: String?

        /// 私钥内容，证书类型为SVR时不需要传递。
        public let key: String?

        public init(certType: String, cert: String, alias: String? = nil, key: String? = nil) {
            self.certType = certType
            self.cert = cert
            self.alias = alias
            self.key = key
        }

        enum CodingKeys: String, CodingKey {
            case certType = "CertType"
            case cert = "Cert"
            case alias = "Alias"
            case key = "Key"
        }
    }

    /// UploadCert返回参数结构体
    public struct UploadCertResponse: TCResponseModel {
        /// 新建的证书ID。
        public let certId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certId = "CertId"
            case requestId = "RequestId"
        }
    }

    /// 创建黑石负载均衡证书
    ///
    /// 创建黑石负载均衡证书。
    @inlinable
    public func uploadCert(_ input: UploadCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadCertResponse> {
        self.client.execute(action: "UploadCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建黑石负载均衡证书
    ///
    /// 创建黑石负载均衡证书。
    @inlinable
    public func uploadCert(_ input: UploadCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadCertResponse {
        try await self.client.execute(action: "UploadCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建黑石负载均衡证书
    ///
    /// 创建黑石负载均衡证书。
    @inlinable
    public func uploadCert(certType: String, cert: String, alias: String? = nil, key: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UploadCertResponse> {
        self.uploadCert(UploadCertRequest(certType: certType, cert: cert, alias: alias, key: key), region: region, logger: logger, on: eventLoop)
    }

    /// 创建黑石负载均衡证书
    ///
    /// 创建黑石负载均衡证书。
    @inlinable
    public func uploadCert(certType: String, cert: String, alias: String? = nil, key: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UploadCertResponse {
        try await self.uploadCert(UploadCertRequest(certType: certType, cert: cert, alias: alias, key: key), region: region, logger: logger, on: eventLoop)
    }
}
