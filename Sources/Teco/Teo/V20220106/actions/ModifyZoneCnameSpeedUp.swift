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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Teo {
    /// ModifyZoneCnameSpeedUp请求参数结构体
    public struct ModifyZoneCnameSpeedUpRequest: TCRequestModel {
        /// 站点 ID
        public let id: String

        /// CNAME 加速状态
        /// - enabled 开启
        /// - disabled 关闭
        public let status: String

        public init(id: String, status: String) {
            self.id = id
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case status = "Status"
        }
    }

    /// ModifyZoneCnameSpeedUp返回参数结构体
    public struct ModifyZoneCnameSpeedUpResponse: TCResponseModel {
        /// 站点 ID
        public let id: String

        /// 站点名称
        public let name: String

        /// CNAME 加速状态
        /// - enabled 开启
        /// - disabled 关闭
        public let status: String

        /// 更新时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var modifiedOn: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case status = "Status"
            case modifiedOn = "ModifiedOn"
            case requestId = "RequestId"
        }
    }

    /// 修改 CNAME 加速状态
    ///
    /// 开启，关闭 CNAME 加速
    @inlinable
    public func modifyZoneCnameSpeedUp(_ input: ModifyZoneCnameSpeedUpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneCnameSpeedUpResponse> {
        self.client.execute(action: "ModifyZoneCnameSpeedUp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改 CNAME 加速状态
    ///
    /// 开启，关闭 CNAME 加速
    @inlinable
    public func modifyZoneCnameSpeedUp(_ input: ModifyZoneCnameSpeedUpRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneCnameSpeedUpResponse {
        try await self.client.execute(action: "ModifyZoneCnameSpeedUp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改 CNAME 加速状态
    ///
    /// 开启，关闭 CNAME 加速
    @inlinable
    public func modifyZoneCnameSpeedUp(id: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyZoneCnameSpeedUpResponse> {
        self.modifyZoneCnameSpeedUp(ModifyZoneCnameSpeedUpRequest(id: id, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 修改 CNAME 加速状态
    ///
    /// 开启，关闭 CNAME 加速
    @inlinable
    public func modifyZoneCnameSpeedUp(id: String, status: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyZoneCnameSpeedUpResponse {
        try await self.modifyZoneCnameSpeedUp(ModifyZoneCnameSpeedUpRequest(id: id, status: status), region: region, logger: logger, on: eventLoop)
    }
}
