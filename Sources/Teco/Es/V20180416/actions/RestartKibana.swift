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
    /// RestartKibana请求参数结构体
    public struct RestartKibanaRequest: TCRequest {
        /// ES实例ID
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// RestartKibana返回参数结构体
    public struct RestartKibanaResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重启Kibana
    @inlinable @discardableResult
    public func restartKibana(_ input: RestartKibanaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartKibanaResponse> {
        self.client.execute(action: "RestartKibana", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重启Kibana
    @inlinable @discardableResult
    public func restartKibana(_ input: RestartKibanaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartKibanaResponse {
        try await self.client.execute(action: "RestartKibana", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重启Kibana
    @inlinable @discardableResult
    public func restartKibana(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartKibanaResponse> {
        self.restartKibana(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 重启Kibana
    @inlinable @discardableResult
    public func restartKibana(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartKibanaResponse {
        try await self.restartKibana(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
