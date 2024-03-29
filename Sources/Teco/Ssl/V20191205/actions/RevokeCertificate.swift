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

import Logging
import NIOCore
import TecoCore

extension Ssl {
    /// RevokeCertificate请求参数结构体
    public struct RevokeCertificateRequest: TCRequest {
        /// 证书 ID。
        public let certificateId: String

        /// 吊销证书原因。
        public let reason: String?

        public init(certificateId: String, reason: String? = nil) {
            self.certificateId = certificateId
            self.reason = reason
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case reason = "Reason"
        }
    }

    /// RevokeCertificate返回参数结构体
    public struct RevokeCertificateResponse: TCResponse {
        /// 吊销证书域名验证信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let revokeDomainValidateAuths: [RevokeDomainValidateAuths]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case revokeDomainValidateAuths = "RevokeDomainValidateAuths"
            case requestId = "RequestId"
        }
    }

    /// 吊销证书
    ///
    /// 本接口（RevokeCertificate）用于吊销证书。
    @inlinable
    public func revokeCertificate(_ input: RevokeCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeCertificateResponse> {
        self.client.execute(action: "RevokeCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 吊销证书
    ///
    /// 本接口（RevokeCertificate）用于吊销证书。
    @inlinable
    public func revokeCertificate(_ input: RevokeCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeCertificateResponse {
        try await self.client.execute(action: "RevokeCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 吊销证书
    ///
    /// 本接口（RevokeCertificate）用于吊销证书。
    @inlinable
    public func revokeCertificate(certificateId: String, reason: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RevokeCertificateResponse> {
        self.revokeCertificate(.init(certificateId: certificateId, reason: reason), region: region, logger: logger, on: eventLoop)
    }

    /// 吊销证书
    ///
    /// 本接口（RevokeCertificate）用于吊销证书。
    @inlinable
    public func revokeCertificate(certificateId: String, reason: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevokeCertificateResponse {
        try await self.revokeCertificate(.init(certificateId: certificateId, reason: reason), region: region, logger: logger, on: eventLoop)
    }
}
