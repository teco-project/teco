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

extension Es {
    /// RestartLogstashInstance请求参数结构体
    public struct RestartLogstashInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 重启类型，0全量重启，1滚动重启
        public let type: Int64?

        public init(instanceId: String, type: Int64? = nil) {
            self.instanceId = instanceId
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case type = "Type"
        }
    }

    /// RestartLogstashInstance返回参数结构体
    public struct RestartLogstashInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重启Logstash实例
    ///
    /// 用于重启Logstash实例
    @inlinable @discardableResult
    public func restartLogstashInstance(_ input: RestartLogstashInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartLogstashInstanceResponse> {
        self.client.execute(action: "RestartLogstashInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重启Logstash实例
    ///
    /// 用于重启Logstash实例
    @inlinable @discardableResult
    public func restartLogstashInstance(_ input: RestartLogstashInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartLogstashInstanceResponse {
        try await self.client.execute(action: "RestartLogstashInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重启Logstash实例
    ///
    /// 用于重启Logstash实例
    @inlinable @discardableResult
    public func restartLogstashInstance(instanceId: String, type: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartLogstashInstanceResponse> {
        self.restartLogstashInstance(.init(instanceId: instanceId, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 重启Logstash实例
    ///
    /// 用于重启Logstash实例
    @inlinable @discardableResult
    public func restartLogstashInstance(instanceId: String, type: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartLogstashInstanceResponse {
        try await self.restartLogstashInstance(.init(instanceId: instanceId, type: type), region: region, logger: logger, on: eventLoop)
    }
}
