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

extension Privatedns {
    /// ModifyPrivateZone请求参数结构体
    public struct ModifyPrivateZoneRequest: TCRequestModel {
        /// 私有域ID
        public let zoneId: String

        /// 备注
        public let remark: String?

        /// 是否开启子域名递归, ENABLED， DISABLED
        public let dnsForwardStatus: String?

        /// 是否开启CNAME加速：ENABLED， DISABLED
        public let cnameSpeedupStatus: String?

        public init(zoneId: String, remark: String? = nil, dnsForwardStatus: String? = nil, cnameSpeedupStatus: String? = nil) {
            self.zoneId = zoneId
            self.remark = remark
            self.dnsForwardStatus = dnsForwardStatus
            self.cnameSpeedupStatus = cnameSpeedupStatus
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case remark = "Remark"
            case dnsForwardStatus = "DnsForwardStatus"
            case cnameSpeedupStatus = "CnameSpeedupStatus"
        }
    }

    /// ModifyPrivateZone返回参数结构体
    public struct ModifyPrivateZoneResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改私有域
    ///
    /// 修改私有域信息
    @inlinable @discardableResult
    public func modifyPrivateZone(_ input: ModifyPrivateZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrivateZoneResponse> {
        self.client.execute(action: "ModifyPrivateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改私有域
    ///
    /// 修改私有域信息
    @inlinable @discardableResult
    public func modifyPrivateZone(_ input: ModifyPrivateZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrivateZoneResponse {
        try await self.client.execute(action: "ModifyPrivateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改私有域
    ///
    /// 修改私有域信息
    @inlinable @discardableResult
    public func modifyPrivateZone(zoneId: String, remark: String? = nil, dnsForwardStatus: String? = nil, cnameSpeedupStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPrivateZoneResponse> {
        self.modifyPrivateZone(.init(zoneId: zoneId, remark: remark, dnsForwardStatus: dnsForwardStatus, cnameSpeedupStatus: cnameSpeedupStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 修改私有域
    ///
    /// 修改私有域信息
    @inlinable @discardableResult
    public func modifyPrivateZone(zoneId: String, remark: String? = nil, dnsForwardStatus: String? = nil, cnameSpeedupStatus: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPrivateZoneResponse {
        try await self.modifyPrivateZone(.init(zoneId: zoneId, remark: remark, dnsForwardStatus: dnsForwardStatus, cnameSpeedupStatus: cnameSpeedupStatus), region: region, logger: logger, on: eventLoop)
    }
}
