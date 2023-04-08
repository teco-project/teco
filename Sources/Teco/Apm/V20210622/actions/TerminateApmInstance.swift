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

extension Apm {
    /// TerminateApmInstance请求参数结构体
    public struct TerminateApmInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// TerminateApmInstance返回参数结构体
    public struct TerminateApmInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 销毁实例
    ///
    /// apm销毁实例
    @inlinable @discardableResult
    public func terminateApmInstance(_ input: TerminateApmInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateApmInstanceResponse> {
        self.client.execute(action: "TerminateApmInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁实例
    ///
    /// apm销毁实例
    @inlinable @discardableResult
    public func terminateApmInstance(_ input: TerminateApmInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateApmInstanceResponse {
        try await self.client.execute(action: "TerminateApmInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁实例
    ///
    /// apm销毁实例
    @inlinable @discardableResult
    public func terminateApmInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateApmInstanceResponse> {
        self.terminateApmInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁实例
    ///
    /// apm销毁实例
    @inlinable @discardableResult
    public func terminateApmInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateApmInstanceResponse {
        try await self.terminateApmInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
