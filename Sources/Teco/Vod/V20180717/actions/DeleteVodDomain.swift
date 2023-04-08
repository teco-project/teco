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

extension Vod {
    /// DeleteVodDomain请求参数结构体
    public struct DeleteVodDomainRequest: TCRequestModel {
        /// 要删除的点播加速域名。
        public let domain: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(domain: String, subAppId: UInt64? = nil) {
            self.domain = domain
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case subAppId = "SubAppId"
        }
    }

    /// DeleteVodDomain返回参数结构体
    public struct DeleteVodDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除点播加速域名
    ///
    /// 该接口用于删除点播加速域名。
    /// 1、域名删除前需要先关闭所有区域的加速。
    @inlinable @discardableResult
    public func deleteVodDomain(_ input: DeleteVodDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVodDomainResponse> {
        self.client.execute(action: "DeleteVodDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除点播加速域名
    ///
    /// 该接口用于删除点播加速域名。
    /// 1、域名删除前需要先关闭所有区域的加速。
    @inlinable @discardableResult
    public func deleteVodDomain(_ input: DeleteVodDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVodDomainResponse {
        try await self.client.execute(action: "DeleteVodDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除点播加速域名
    ///
    /// 该接口用于删除点播加速域名。
    /// 1、域名删除前需要先关闭所有区域的加速。
    @inlinable @discardableResult
    public func deleteVodDomain(domain: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteVodDomainResponse> {
        self.deleteVodDomain(.init(domain: domain, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除点播加速域名
    ///
    /// 该接口用于删除点播加速域名。
    /// 1、域名删除前需要先关闭所有区域的加速。
    @inlinable @discardableResult
    public func deleteVodDomain(domain: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVodDomainResponse {
        try await self.deleteVodDomain(.init(domain: domain, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
