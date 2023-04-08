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

extension Live {
    /// DescribeLiveDomainCert请求参数结构体
    public struct DescribeLiveDomainCertRequest: TCRequestModel {
        /// 播放域名。
        public let domainName: String

        public init(domainName: String) {
            self.domainName = domainName
        }

        enum CodingKeys: String, CodingKey {
            case domainName = "DomainName"
        }
    }

    /// DescribeLiveDomainCert返回参数结构体
    public struct DescribeLiveDomainCertResponse: TCResponseModel {
        /// 证书信息。
        public let domainCertInfo: DomainCertInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domainCertInfo = "DomainCertInfo"
            case requestId = "RequestId"
        }
    }

    /// 获取域名证书信息
    ///
    /// 获取域名证书信息。
    @inlinable
    public func describeLiveDomainCert(_ input: DescribeLiveDomainCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDomainCertResponse> {
        self.client.execute(action: "DescribeLiveDomainCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取域名证书信息
    ///
    /// 获取域名证书信息。
    @inlinable
    public func describeLiveDomainCert(_ input: DescribeLiveDomainCertRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDomainCertResponse {
        try await self.client.execute(action: "DescribeLiveDomainCert", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取域名证书信息
    ///
    /// 获取域名证书信息。
    @inlinable
    public func describeLiveDomainCert(domainName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveDomainCertResponse> {
        self.describeLiveDomainCert(.init(domainName: domainName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取域名证书信息
    ///
    /// 获取域名证书信息。
    @inlinable
    public func describeLiveDomainCert(domainName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveDomainCertResponse {
        try await self.describeLiveDomainCert(.init(domainName: domainName), region: region, logger: logger, on: eventLoop)
    }
}
