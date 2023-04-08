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

extension Teo {
    /// ReclaimAliasDomain请求参数结构体
    public struct ReclaimAliasDomainRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String?

        /// 站点名称。
        public let zoneName: String?

        public init(zoneId: String? = nil, zoneName: String? = nil) {
            self.zoneId = zoneId
            self.zoneName = zoneName
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case zoneName = "ZoneName"
        }
    }

    /// ReclaimAliasDomain返回参数结构体
    public struct ReclaimAliasDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取回别称域名
    ///
    /// 当客户取回站定的同时会取回此站点下关联的别称域名，此时入参为ZoneId；当客户接入站点发现已被别称域名接入时通过验证之后可取回域名，此时入参为ZoneName。
    @inlinable @discardableResult
    public func reclaimAliasDomain(_ input: ReclaimAliasDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReclaimAliasDomainResponse> {
        self.client.execute(action: "ReclaimAliasDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取回别称域名
    ///
    /// 当客户取回站定的同时会取回此站点下关联的别称域名，此时入参为ZoneId；当客户接入站点发现已被别称域名接入时通过验证之后可取回域名，此时入参为ZoneName。
    @inlinable @discardableResult
    public func reclaimAliasDomain(_ input: ReclaimAliasDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReclaimAliasDomainResponse {
        try await self.client.execute(action: "ReclaimAliasDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取回别称域名
    ///
    /// 当客户取回站定的同时会取回此站点下关联的别称域名，此时入参为ZoneId；当客户接入站点发现已被别称域名接入时通过验证之后可取回域名，此时入参为ZoneName。
    @inlinable @discardableResult
    public func reclaimAliasDomain(zoneId: String? = nil, zoneName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReclaimAliasDomainResponse> {
        self.reclaimAliasDomain(.init(zoneId: zoneId, zoneName: zoneName), region: region, logger: logger, on: eventLoop)
    }

    /// 取回别称域名
    ///
    /// 当客户取回站定的同时会取回此站点下关联的别称域名，此时入参为ZoneId；当客户接入站点发现已被别称域名接入时通过验证之后可取回域名，此时入参为ZoneName。
    @inlinable @discardableResult
    public func reclaimAliasDomain(zoneId: String? = nil, zoneName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReclaimAliasDomainResponse {
        try await self.reclaimAliasDomain(.init(zoneId: zoneId, zoneName: zoneName), region: region, logger: logger, on: eventLoop)
    }
}
