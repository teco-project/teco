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

extension Live {
    /// UnBindLiveDomainCert请求参数结构体
    public struct UnBindLiveDomainCertRequest: TCRequest {
        /// 播放域名。
        public let domainName: String

        /// 枚举值：
        /// gray: 解绑灰度规则
        /// formal(默认): 解绑正式规则
        ///
        /// 不传则为formal
        public let type: String?

        public init(domainName: String, type: String? = nil) {
            self.domainName = domainName
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
            case type = "Type"
        }
    }

    /// UnBindLiveDomainCert返回参数结构体
    public struct UnBindLiveDomainCertResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑域名证书
    @inlinable @discardableResult
    public func unBindLiveDomainCert(_ input: UnBindLiveDomainCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnBindLiveDomainCertResponse> {
        self.client.execute(action: "UnBindLiveDomainCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑域名证书
    @inlinable @discardableResult
    public func unBindLiveDomainCert(_ input: UnBindLiveDomainCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnBindLiveDomainCertResponse {
        try await self.client.execute(action: "UnBindLiveDomainCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑域名证书
    @inlinable @discardableResult
    public func unBindLiveDomainCert(domainName: String, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnBindLiveDomainCertResponse> {
        self.unBindLiveDomainCert(.init(domainName: domainName, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑域名证书
    @inlinable @discardableResult
    public func unBindLiveDomainCert(domainName: String, type: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnBindLiveDomainCertResponse {
        try await self.unBindLiveDomainCert(.init(domainName: domainName, type: type), region: region, logger: logger, on: eventLoop)
    }
}
