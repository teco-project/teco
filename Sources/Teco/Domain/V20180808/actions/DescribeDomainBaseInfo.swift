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

extension Domain {
    /// DescribeDomainBaseInfo请求参数结构体
    public struct DescribeDomainBaseInfoRequest: TCRequestModel {
        /// 域名
        public let domain: String

        public init(domain: String) {
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
        }
    }

    /// DescribeDomainBaseInfo返回参数结构体
    public struct DescribeDomainBaseInfoResponse: TCResponseModel {
        /// 域名信息
        public let domainInfo: DomainBaseInfo

        /// 用户Uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uin: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domainInfo = "DomainInfo"
            case uin = "Uin"
            case requestId = "RequestId"
        }
    }

    /// 域名基本信息
    ///
    /// 本接口 (  DescribeDomainBaseInfo) 获取域名基本信息。
    @inlinable
    public func describeDomainBaseInfo(_ input: DescribeDomainBaseInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainBaseInfoResponse> {
        self.client.execute(action: "DescribeDomainBaseInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 域名基本信息
    ///
    /// 本接口 (  DescribeDomainBaseInfo) 获取域名基本信息。
    @inlinable
    public func describeDomainBaseInfo(_ input: DescribeDomainBaseInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainBaseInfoResponse {
        try await self.client.execute(action: "DescribeDomainBaseInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 域名基本信息
    ///
    /// 本接口 (  DescribeDomainBaseInfo) 获取域名基本信息。
    @inlinable
    public func describeDomainBaseInfo(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainBaseInfoResponse> {
        self.describeDomainBaseInfo(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 域名基本信息
    ///
    /// 本接口 (  DescribeDomainBaseInfo) 获取域名基本信息。
    @inlinable
    public func describeDomainBaseInfo(domain: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainBaseInfoResponse {
        try await self.describeDomainBaseInfo(.init(domain: domain), region: region, logger: logger, on: eventLoop)
    }
}
