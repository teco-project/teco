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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Mongodb {
    /// TerminateDBInstance请求参数结构体
    public struct TerminateDBInstanceRequest: TCRequestModel {
        /// 实例ID，格式如：cmgo-p8vnipr5。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// TerminateDBInstance返回参数结构体
    public struct TerminateDBInstanceResponse: TCResponseModel {
        /// 订单ID，表示注销实例成功
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 销毁云数据库实例（按量计费）
    ///
    /// 本接口(TerminateDBInstance)用于销毁按量计费的MongoDB云数据库实例
    @inlinable
    public func terminateDBInstance(_ input: TerminateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateDBInstanceResponse> {
        self.client.execute(action: "TerminateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁云数据库实例（按量计费）
    ///
    /// 本接口(TerminateDBInstance)用于销毁按量计费的MongoDB云数据库实例
    @inlinable
    public func terminateDBInstance(_ input: TerminateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateDBInstanceResponse {
        try await self.client.execute(action: "TerminateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁云数据库实例（按量计费）
    ///
    /// 本接口(TerminateDBInstance)用于销毁按量计费的MongoDB云数据库实例
    @inlinable
    public func terminateDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateDBInstanceResponse> {
        self.terminateDBInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁云数据库实例（按量计费）
    ///
    /// 本接口(TerminateDBInstance)用于销毁按量计费的MongoDB云数据库实例
    @inlinable
    public func terminateDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateDBInstanceResponse {
        try await self.terminateDBInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
