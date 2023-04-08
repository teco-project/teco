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

extension Redis {
    /// DestroyPrepaidInstance请求参数结构体
    public struct DestroyPrepaidInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DestroyPrepaidInstance返回参数结构体
    public struct DestroyPrepaidInstanceResponse: TCResponseModel {
        /// 订单Id
        public let dealId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealId = "DealId"
            case requestId = "RequestId"
        }
    }

    /// 包年包月实例退还
    @inlinable
    public func destroyPrepaidInstance(_ input: DestroyPrepaidInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyPrepaidInstanceResponse> {
        self.client.execute(action: "DestroyPrepaidInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 包年包月实例退还
    @inlinable
    public func destroyPrepaidInstance(_ input: DestroyPrepaidInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyPrepaidInstanceResponse {
        try await self.client.execute(action: "DestroyPrepaidInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 包年包月实例退还
    @inlinable
    public func destroyPrepaidInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyPrepaidInstanceResponse> {
        self.destroyPrepaidInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 包年包月实例退还
    @inlinable
    public func destroyPrepaidInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyPrepaidInstanceResponse {
        try await self.destroyPrepaidInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
