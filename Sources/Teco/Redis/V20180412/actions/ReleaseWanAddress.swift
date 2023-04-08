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
    /// ReleaseWanAddress请求参数结构体
    public struct ReleaseWanAddressRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// ReleaseWanAddress返回参数结构体
    public struct ReleaseWanAddressResponse: TCResponseModel {
        /// 异步流程ID
        public let flowId: Int64

        /// 关闭外网的状态
        public let wanStatus: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case wanStatus = "WanStatus"
            case requestId = "RequestId"
        }
    }

    /// 关闭外网接口
    ///
    /// 关闭外网
    @inlinable
    public func releaseWanAddress(_ input: ReleaseWanAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseWanAddressResponse> {
        self.client.execute(action: "ReleaseWanAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭外网接口
    ///
    /// 关闭外网
    @inlinable
    public func releaseWanAddress(_ input: ReleaseWanAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseWanAddressResponse {
        try await self.client.execute(action: "ReleaseWanAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭外网接口
    ///
    /// 关闭外网
    @inlinable
    public func releaseWanAddress(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseWanAddressResponse> {
        self.releaseWanAddress(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭外网接口
    ///
    /// 关闭外网
    @inlinable
    public func releaseWanAddress(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseWanAddressResponse {
        try await self.releaseWanAddress(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
