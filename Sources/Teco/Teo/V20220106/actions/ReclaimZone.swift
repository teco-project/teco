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
    /// ReclaimZone请求参数结构体
    public struct ReclaimZoneRequest: TCRequestModel {
        /// 站点名称
        public let name: String

        public init(name: String) {
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    /// ReclaimZone返回参数结构体
    public struct ReclaimZoneResponse: TCResponseModel {
        /// 站点名称
        public let name: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case requestId = "RequestId"
        }
    }

    /// 找回站点
    ///
    /// 站点被其他用户接入后，验证了站点所有权之后，可以找回该站点
    @inlinable
    public func reclaimZone(_ input: ReclaimZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReclaimZoneResponse> {
        self.client.execute(action: "ReclaimZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 找回站点
    ///
    /// 站点被其他用户接入后，验证了站点所有权之后，可以找回该站点
    @inlinable
    public func reclaimZone(_ input: ReclaimZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReclaimZoneResponse {
        try await self.client.execute(action: "ReclaimZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 找回站点
    ///
    /// 站点被其他用户接入后，验证了站点所有权之后，可以找回该站点
    @inlinable
    public func reclaimZone(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReclaimZoneResponse> {
        self.reclaimZone(ReclaimZoneRequest(name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 找回站点
    ///
    /// 站点被其他用户接入后，验证了站点所有权之后，可以找回该站点
    @inlinable
    public func reclaimZone(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReclaimZoneResponse {
        try await self.reclaimZone(ReclaimZoneRequest(name: name), region: region, logger: logger, on: eventLoop)
    }
}
