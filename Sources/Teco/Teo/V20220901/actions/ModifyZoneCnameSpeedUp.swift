//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Teo {
    /// ModifyZoneCnameSpeedUp请求参数结构体
    public struct ModifyZoneCnameSpeedUpRequest: TCRequestModel {
        /// 站点 ID。
        public let zoneId: String

        /// CNAME 加速状态，取值有：
        /// <li> enabled：开启；</li>
        /// <li> disabled：关闭。</li>
        public let status: String

        public init(zoneId: String, status: String) {
            self.zoneId = zoneId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case status = "Status"
        }
    }

    /// ModifyZoneCnameSpeedUp返回参数结构体
    public struct ModifyZoneCnameSpeedUpResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改 CNAME 加速状态
    ///
    /// 开启，关闭 CNAME 加速。
    @inlinable @discardableResult
    public func modifyZoneCnameSpeedUp(_ input: ModifyZoneCnameSpeedUpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneCnameSpeedUpResponse> {
        self.client.execute(action: "ModifyZoneCnameSpeedUp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改 CNAME 加速状态
    ///
    /// 开启，关闭 CNAME 加速。
    @inlinable @discardableResult
    public func modifyZoneCnameSpeedUp(_ input: ModifyZoneCnameSpeedUpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneCnameSpeedUpResponse {
        try await self.client.execute(action: "ModifyZoneCnameSpeedUp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改 CNAME 加速状态
    ///
    /// 开启，关闭 CNAME 加速。
    @inlinable @discardableResult
    public func modifyZoneCnameSpeedUp(zoneId: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneCnameSpeedUpResponse> {
        self.modifyZoneCnameSpeedUp(ModifyZoneCnameSpeedUpRequest(zoneId: zoneId, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 修改 CNAME 加速状态
    ///
    /// 开启，关闭 CNAME 加速。
    @inlinable @discardableResult
    public func modifyZoneCnameSpeedUp(zoneId: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneCnameSpeedUpResponse {
        try await self.modifyZoneCnameSpeedUp(ModifyZoneCnameSpeedUpRequest(zoneId: zoneId, status: status), region: region, logger: logger, on: eventLoop)
    }
}
