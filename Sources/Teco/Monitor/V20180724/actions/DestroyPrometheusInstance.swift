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

extension Monitor {
    /// DestroyPrometheusInstance请求参数结构体
    public struct DestroyPrometheusInstanceRequest: TCRequest {
        /// 实例 ID，该实例必须先被 terminate
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DestroyPrometheusInstance返回参数结构体
    public struct DestroyPrometheusInstanceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 强制释放 Prometheus 实例
    ///
    /// 彻底删除 Prometheus 实例相关数据，给定的实例必须先被 Terminate
    @inlinable @discardableResult
    public func destroyPrometheusInstance(_ input: DestroyPrometheusInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyPrometheusInstanceResponse> {
        self.client.execute(action: "DestroyPrometheusInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 强制释放 Prometheus 实例
    ///
    /// 彻底删除 Prometheus 实例相关数据，给定的实例必须先被 Terminate
    @inlinable @discardableResult
    public func destroyPrometheusInstance(_ input: DestroyPrometheusInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyPrometheusInstanceResponse {
        try await self.client.execute(action: "DestroyPrometheusInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 强制释放 Prometheus 实例
    ///
    /// 彻底删除 Prometheus 实例相关数据，给定的实例必须先被 Terminate
    @inlinable @discardableResult
    public func destroyPrometheusInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyPrometheusInstanceResponse> {
        self.destroyPrometheusInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 强制释放 Prometheus 实例
    ///
    /// 彻底删除 Prometheus 实例相关数据，给定的实例必须先被 Terminate
    @inlinable @discardableResult
    public func destroyPrometheusInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyPrometheusInstanceResponse {
        try await self.destroyPrometheusInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
