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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Teo {
    /// DeleteAccelerationDomains请求参数结构体
    public struct DeleteAccelerationDomainsRequest: TCRequestModel {
        /// 加速域名所属站点ID。
        public let zoneId: String

        /// 需要删除的加速域名ID列表。
        public let domainNames: [String]

        /// 是否强制删除。当域名存在关联资源（如马甲域名、流量调度功能）时，是否强制删除该域名，取值有：
        /// <li> true：删除该域名及所有关联资源；</li>
        /// <li> false：当该加速域名存在关联资源时，不允许删除。</li>不填写，默认值为：false。
        public let force: Bool?

        public init(zoneId: String, domainNames: [String], force: Bool? = nil) {
            self.zoneId = zoneId
            self.domainNames = domainNames
            self.force = force
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case domainNames = "DomainNames"
            case force = "Force"
        }
    }

    /// DeleteAccelerationDomains返回参数结构体
    public struct DeleteAccelerationDomainsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量删除加速域名
    @inlinable @discardableResult
    public func deleteAccelerationDomains(_ input: DeleteAccelerationDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccelerationDomainsResponse> {
        self.client.execute(action: "DeleteAccelerationDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除加速域名
    @inlinable @discardableResult
    public func deleteAccelerationDomains(_ input: DeleteAccelerationDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccelerationDomainsResponse {
        try await self.client.execute(action: "DeleteAccelerationDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除加速域名
    @inlinable @discardableResult
    public func deleteAccelerationDomains(zoneId: String, domainNames: [String], force: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAccelerationDomainsResponse> {
        self.deleteAccelerationDomains(.init(zoneId: zoneId, domainNames: domainNames, force: force), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除加速域名
    @inlinable @discardableResult
    public func deleteAccelerationDomains(zoneId: String, domainNames: [String], force: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAccelerationDomainsResponse {
        try await self.deleteAccelerationDomains(.init(zoneId: zoneId, domainNames: domainNames, force: force), region: region, logger: logger, on: eventLoop)
    }
}
