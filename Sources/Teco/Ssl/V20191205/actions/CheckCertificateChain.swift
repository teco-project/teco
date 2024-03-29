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
    /// CheckCertificateChain请求参数结构体
    public struct CheckCertificateChainRequest: TCRequest {
        /// 待检查的证书链
        public let certificateChain: String

        public init(certificateChain: String) {
            self.certificateChain = certificateChain
        }

        enum CodingKeys: String, CodingKey {
            case certificateChain = "CertificateChain"
        }
    }

    /// CheckCertificateChain返回参数结构体
    public struct CheckCertificateChainResponse: TCResponse {
        /// true为通过检查，false为未通过检查。
        public let isValid: Bool

        /// true为可信CA，false为不可信CA。
        public let isTrustedCA: Bool

        /// 包含证书链中每一段证书的通用名称。
        public let chains: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case isValid = "IsValid"
            case isTrustedCA = "IsTrustedCA"
            case chains = "Chains"
            case requestId = "RequestId"
        }
    }

    /// 检查证书链完整性
    ///
    /// 本接口（CheckCertificateChain）用于检查证书链是否完整。
    @inlinable
    public func checkCertificateChain(_ input: CheckCertificateChainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckCertificateChainResponse> {
        self.client.execute(action: "CheckCertificateChain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检查证书链完整性
    ///
    /// 本接口（CheckCertificateChain）用于检查证书链是否完整。
    @inlinable
    public func checkCertificateChain(_ input: CheckCertificateChainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckCertificateChainResponse {
        try await self.client.execute(action: "CheckCertificateChain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检查证书链完整性
    ///
    /// 本接口（CheckCertificateChain）用于检查证书链是否完整。
    @inlinable
    public func checkCertificateChain(certificateChain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckCertificateChainResponse> {
        self.checkCertificateChain(.init(certificateChain: certificateChain), region: region, logger: logger, on: eventLoop)
    }

    /// 检查证书链完整性
    ///
    /// 本接口（CheckCertificateChain）用于检查证书链是否完整。
    @inlinable
    public func checkCertificateChain(certificateChain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckCertificateChainResponse {
        try await self.checkCertificateChain(.init(certificateChain: certificateChain), region: region, logger: logger, on: eventLoop)
    }
}
