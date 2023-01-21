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

extension Ssl {
    /// ReplaceCertificate请求参数结构体
    public struct ReplaceCertificateRequest: TCRequestModel {
        /// 证书 ID。
        public let certificateId: String

        /// 验证类型：DNS_AUTO = 自动DNS验证（仅支持在腾讯云解析且解析状态正常的域名使用该验证类型），DNS = 手动DNS验证，FILE = 文件验证。
        public let validType: String

        /// 类型，默认 Original。可选项：Original = 原证书 CSR，Upload = 手动上传，Online = 在线生成。
        public let csrType: String?

        /// CSR 内容。
        public let csrContent: String?

        /// KEY 密码。
        public let csrkeyPassword: String?

        /// 重颁发原因。
        public let reason: String?

        public init(certificateId: String, validType: String, csrType: String? = nil, csrContent: String? = nil, csrkeyPassword: String? = nil, reason: String? = nil) {
            self.certificateId = certificateId
            self.validType = validType
            self.csrType = csrType
            self.csrContent = csrContent
            self.csrkeyPassword = csrkeyPassword
            self.reason = reason
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case validType = "ValidType"
            case csrType = "CsrType"
            case csrContent = "CsrContent"
            case csrkeyPassword = "CsrkeyPassword"
            case reason = "Reason"
        }
    }

    /// ReplaceCertificate返回参数结构体
    public struct ReplaceCertificateResponse: TCResponseModel {
        /// 证书 ID。
        public let certificateId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case requestId = "RequestId"
        }
    }

    /// 重颁发证书
    ///
    /// 本接口（ReplaceCertificate）用于重颁发证书。已申请的免费证书仅支持 RSA 算法、密钥对参数为2048的证书重颁发，并且目前仅支持1次重颁发。
    @inlinable
    public func replaceCertificate(_ input: ReplaceCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplaceCertificateResponse> {
        self.client.execute(action: "ReplaceCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重颁发证书
    ///
    /// 本接口（ReplaceCertificate）用于重颁发证书。已申请的免费证书仅支持 RSA 算法、密钥对参数为2048的证书重颁发，并且目前仅支持1次重颁发。
    @inlinable
    public func replaceCertificate(_ input: ReplaceCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceCertificateResponse {
        try await self.client.execute(action: "ReplaceCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重颁发证书
    ///
    /// 本接口（ReplaceCertificate）用于重颁发证书。已申请的免费证书仅支持 RSA 算法、密钥对参数为2048的证书重颁发，并且目前仅支持1次重颁发。
    @inlinable
    public func replaceCertificate(certificateId: String, validType: String, csrType: String? = nil, csrContent: String? = nil, csrkeyPassword: String? = nil, reason: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReplaceCertificateResponse> {
        self.replaceCertificate(ReplaceCertificateRequest(certificateId: certificateId, validType: validType, csrType: csrType, csrContent: csrContent, csrkeyPassword: csrkeyPassword, reason: reason), region: region, logger: logger, on: eventLoop)
    }

    /// 重颁发证书
    ///
    /// 本接口（ReplaceCertificate）用于重颁发证书。已申请的免费证书仅支持 RSA 算法、密钥对参数为2048的证书重颁发，并且目前仅支持1次重颁发。
    @inlinable
    public func replaceCertificate(certificateId: String, validType: String, csrType: String? = nil, csrContent: String? = nil, csrkeyPassword: String? = nil, reason: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReplaceCertificateResponse {
        try await self.replaceCertificate(ReplaceCertificateRequest(certificateId: certificateId, validType: validType, csrType: csrType, csrContent: csrContent, csrkeyPassword: csrkeyPassword, reason: reason), region: region, logger: logger, on: eventLoop)
    }
}
