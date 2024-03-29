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

extension Iotvideo {
    /// CreateDevToken请求参数结构体
    public struct CreateDevTokenRequest: TCRequest {
        /// 客户的终端用户在IoT Video上的唯一标识ID
        public let accessId: String

        /// 设备TID列表,0<元素数量<=100
        public let tids: [String]

        /// Token的TTL(time to alive)分钟数
        public let ttlMinutes: UInt64

        public init(accessId: String, tids: [String], ttlMinutes: UInt64) {
            self.accessId = accessId
            self.tids = tids
            self.ttlMinutes = ttlMinutes
        }

        enum CodingKeys: String, CodingKey {
            case accessId = "AccessId"
            case tids = "Tids"
            case ttlMinutes = "TtlMinutes"
        }
    }

    /// CreateDevToken返回参数结构体
    public struct CreateDevTokenResponse: TCResponse {
        /// 返回的用户token列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [DevTokenInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 终端用户临时访问设备授权
    ///
    /// 本接口（CreateDevToken）用于以下场景：
    /// 终端用户与设备没有强绑定关联关系;
    /// 允许终端用户短时或一次性临时访问设备;
    /// 当终端用户与设备有强绑定关系时，可以不用调用此接口
    @inlinable
    public func createDevToken(_ input: CreateDevTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDevTokenResponse> {
        self.client.execute(action: "CreateDevToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终端用户临时访问设备授权
    ///
    /// 本接口（CreateDevToken）用于以下场景：
    /// 终端用户与设备没有强绑定关联关系;
    /// 允许终端用户短时或一次性临时访问设备;
    /// 当终端用户与设备有强绑定关系时，可以不用调用此接口
    @inlinable
    public func createDevToken(_ input: CreateDevTokenRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDevTokenResponse {
        try await self.client.execute(action: "CreateDevToken", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终端用户临时访问设备授权
    ///
    /// 本接口（CreateDevToken）用于以下场景：
    /// 终端用户与设备没有强绑定关联关系;
    /// 允许终端用户短时或一次性临时访问设备;
    /// 当终端用户与设备有强绑定关系时，可以不用调用此接口
    @inlinable
    public func createDevToken(accessId: String, tids: [String], ttlMinutes: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDevTokenResponse> {
        self.createDevToken(.init(accessId: accessId, tids: tids, ttlMinutes: ttlMinutes), region: region, logger: logger, on: eventLoop)
    }

    /// 终端用户临时访问设备授权
    ///
    /// 本接口（CreateDevToken）用于以下场景：
    /// 终端用户与设备没有强绑定关联关系;
    /// 允许终端用户短时或一次性临时访问设备;
    /// 当终端用户与设备有强绑定关系时，可以不用调用此接口
    @inlinable
    public func createDevToken(accessId: String, tids: [String], ttlMinutes: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDevTokenResponse {
        try await self.createDevToken(.init(accessId: accessId, tids: tids, ttlMinutes: ttlMinutes), region: region, logger: logger, on: eventLoop)
    }
}
