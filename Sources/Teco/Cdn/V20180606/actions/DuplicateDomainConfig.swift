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

import TecoCore

extension Cdn {
    /// DuplicateDomainConfig请求参数结构体
    public struct DuplicateDomainConfigRequest: TCRequestModel {
        /// 新增域名
        public let domain: String

        /// 被拷贝配置的域名
        public let referenceDomain: String

        public init(domain: String, referenceDomain: String) {
            self.domain = domain
            self.referenceDomain = referenceDomain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case referenceDomain = "ReferenceDomain"
        }
    }

    /// DuplicateDomainConfig返回参数结构体
    public struct DuplicateDomainConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 拷贝域名
    ///
    /// 拷贝参考域名的配置至新域名。暂不支持自有证书以及定制化配置
    @inlinable @discardableResult
    public func duplicateDomainConfig(_ input: DuplicateDomainConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DuplicateDomainConfigResponse> {
        self.client.execute(action: "DuplicateDomainConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拷贝域名
    ///
    /// 拷贝参考域名的配置至新域名。暂不支持自有证书以及定制化配置
    @inlinable @discardableResult
    public func duplicateDomainConfig(_ input: DuplicateDomainConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DuplicateDomainConfigResponse {
        try await self.client.execute(action: "DuplicateDomainConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拷贝域名
    ///
    /// 拷贝参考域名的配置至新域名。暂不支持自有证书以及定制化配置
    @inlinable @discardableResult
    public func duplicateDomainConfig(domain: String, referenceDomain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DuplicateDomainConfigResponse> {
        self.duplicateDomainConfig(.init(domain: domain, referenceDomain: referenceDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 拷贝域名
    ///
    /// 拷贝参考域名的配置至新域名。暂不支持自有证书以及定制化配置
    @inlinable @discardableResult
    public func duplicateDomainConfig(domain: String, referenceDomain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DuplicateDomainConfigResponse {
        try await self.duplicateDomainConfig(.init(domain: domain, referenceDomain: referenceDomain), region: region, logger: logger, on: eventLoop)
    }
}
