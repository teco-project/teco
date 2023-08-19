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

extension Rum {
    /// StopInstance请求参数结构体
    public struct StopInstanceRequest: TCRequest {
        /// 需要停止的实例id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// StopInstance返回参数结构体
    public struct StopInstanceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止RUM业务系统
    ///
    /// 停止实例
    @inlinable @discardableResult
    public func stopInstance(_ input: StopInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopInstanceResponse> {
        self.client.execute(action: "StopInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止RUM业务系统
    ///
    /// 停止实例
    @inlinable @discardableResult
    public func stopInstance(_ input: StopInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopInstanceResponse {
        try await self.client.execute(action: "StopInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止RUM业务系统
    ///
    /// 停止实例
    @inlinable @discardableResult
    public func stopInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopInstanceResponse> {
        self.stopInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 停止RUM业务系统
    ///
    /// 停止实例
    @inlinable @discardableResult
    public func stopInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopInstanceResponse {
        try await self.stopInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
