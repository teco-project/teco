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

extension Domain {
    /// SetDomainAutoRenew请求参数结构体
    public struct SetDomainAutoRenewRequest: TCRequestModel {
        /// 域名ID。
        public let domainId: String

        /// AutoRenew 有三个可选值：
        ///  0：不设置自动续费
        /// 1：设置自动续费
        /// 2：设置到期后不续费
        public let autoRenew: UInt64

        public init(domainId: String, autoRenew: UInt64) {
            self.domainId = domainId
            self.autoRenew = autoRenew
        }

        enum CodingKeys: String, CodingKey {
            case domainId = "DomainId"
            case autoRenew = "AutoRenew"
        }
    }

    /// SetDomainAutoRenew返回参数结构体
    public struct SetDomainAutoRenewResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 域名自动续费
    ///
    /// 本接口 ( SetDomainAutoRenew ) 用于设置域名自动续费。
    @inlinable @discardableResult
    public func setDomainAutoRenew(_ input: SetDomainAutoRenewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetDomainAutoRenewResponse> {
        self.client.execute(action: "SetDomainAutoRenew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 域名自动续费
    ///
    /// 本接口 ( SetDomainAutoRenew ) 用于设置域名自动续费。
    @inlinable @discardableResult
    public func setDomainAutoRenew(_ input: SetDomainAutoRenewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetDomainAutoRenewResponse {
        try await self.client.execute(action: "SetDomainAutoRenew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 域名自动续费
    ///
    /// 本接口 ( SetDomainAutoRenew ) 用于设置域名自动续费。
    @inlinable @discardableResult
    public func setDomainAutoRenew(domainId: String, autoRenew: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetDomainAutoRenewResponse> {
        self.setDomainAutoRenew(SetDomainAutoRenewRequest(domainId: domainId, autoRenew: autoRenew), region: region, logger: logger, on: eventLoop)
    }

    /// 域名自动续费
    ///
    /// 本接口 ( SetDomainAutoRenew ) 用于设置域名自动续费。
    @inlinable @discardableResult
    public func setDomainAutoRenew(domainId: String, autoRenew: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetDomainAutoRenewResponse {
        try await self.setDomainAutoRenew(SetDomainAutoRenewRequest(domainId: domainId, autoRenew: autoRenew), region: region, logger: logger, on: eventLoop)
    }
}
