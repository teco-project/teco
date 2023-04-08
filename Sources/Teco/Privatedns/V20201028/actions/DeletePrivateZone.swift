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

extension Privatedns {
    /// DeletePrivateZone请求参数结构体
    public struct DeletePrivateZoneRequest: TCRequestModel {
        /// 私有域ID
        public let zoneId: String?

        /// 私有域ID数组，ZoneId 优先
        public let zoneIdSet: [String]?

        public init(zoneId: String? = nil, zoneIdSet: [String]? = nil) {
            self.zoneId = zoneId
            self.zoneIdSet = zoneIdSet
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case zoneIdSet = "ZoneIdSet"
        }
    }

    /// DeletePrivateZone返回参数结构体
    public struct DeletePrivateZoneResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除私有域
    ///
    /// 删除私有域并停止解析
    @inlinable @discardableResult
    public func deletePrivateZone(_ input: DeletePrivateZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrivateZoneResponse> {
        self.client.execute(action: "DeletePrivateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除私有域
    ///
    /// 删除私有域并停止解析
    @inlinable @discardableResult
    public func deletePrivateZone(_ input: DeletePrivateZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrivateZoneResponse {
        try await self.client.execute(action: "DeletePrivateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除私有域
    ///
    /// 删除私有域并停止解析
    @inlinable @discardableResult
    public func deletePrivateZone(zoneId: String? = nil, zoneIdSet: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePrivateZoneResponse> {
        self.deletePrivateZone(.init(zoneId: zoneId, zoneIdSet: zoneIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除私有域
    ///
    /// 删除私有域并停止解析
    @inlinable @discardableResult
    public func deletePrivateZone(zoneId: String? = nil, zoneIdSet: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePrivateZoneResponse {
        try await self.deletePrivateZone(.init(zoneId: zoneId, zoneIdSet: zoneIdSet), region: region, logger: logger, on: eventLoop)
    }
}
