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

extension Privatedns {
    /// SubscribePrivateZoneService请求参数结构体
    public struct SubscribePrivateZoneServiceRequest: TCRequest {
        public init() {
        }
    }

    /// SubscribePrivateZoneService返回参数结构体
    public struct SubscribePrivateZoneServiceResponse: TCResponse {
        /// 私有域解析服务开通状态
        public let serviceStatus: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serviceStatus = "ServiceStatus"
            case requestId = "RequestId"
        }
    }

    /// 开通私有域解析
    @inlinable
    public func subscribePrivateZoneService(_ input: SubscribePrivateZoneServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubscribePrivateZoneServiceResponse> {
        self.client.execute(action: "SubscribePrivateZoneService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开通私有域解析
    @inlinable
    public func subscribePrivateZoneService(_ input: SubscribePrivateZoneServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubscribePrivateZoneServiceResponse {
        try await self.client.execute(action: "SubscribePrivateZoneService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开通私有域解析
    @inlinable
    public func subscribePrivateZoneService(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubscribePrivateZoneServiceResponse> {
        self.subscribePrivateZoneService(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 开通私有域解析
    @inlinable
    public func subscribePrivateZoneService(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubscribePrivateZoneServiceResponse {
        try await self.subscribePrivateZoneService(.init(), region: region, logger: logger, on: eventLoop)
    }
}
