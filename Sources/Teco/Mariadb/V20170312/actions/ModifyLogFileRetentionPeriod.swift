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

extension Mariadb {
    /// ModifyLogFileRetentionPeriod请求参数结构体
    public struct ModifyLogFileRetentionPeriodRequest: TCRequest {
        /// 实例 ID，形如：tdsql-ow728lmc。
        public let instanceId: String

        /// 保存的天数,不能超过30
        public let days: UInt64

        public init(instanceId: String, days: UInt64) {
            self.instanceId = instanceId
            self.days = days
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case days = "Days"
        }
    }

    /// ModifyLogFileRetentionPeriod返回参数结构体
    public struct ModifyLogFileRetentionPeriodResponse: TCResponse {
        /// 实例 ID，形如：tdsql-ow728lmc。
        public let instanceId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case requestId = "RequestId"
        }
    }

    /// 修改备份日志保存天数
    ///
    /// 本接口(ModifyLogFileRetentionPeriod)用于修改数据库备份日志保存天数。
    @inlinable
    public func modifyLogFileRetentionPeriod(_ input: ModifyLogFileRetentionPeriodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLogFileRetentionPeriodResponse> {
        self.client.execute(action: "ModifyLogFileRetentionPeriod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改备份日志保存天数
    ///
    /// 本接口(ModifyLogFileRetentionPeriod)用于修改数据库备份日志保存天数。
    @inlinable
    public func modifyLogFileRetentionPeriod(_ input: ModifyLogFileRetentionPeriodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLogFileRetentionPeriodResponse {
        try await self.client.execute(action: "ModifyLogFileRetentionPeriod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改备份日志保存天数
    ///
    /// 本接口(ModifyLogFileRetentionPeriod)用于修改数据库备份日志保存天数。
    @inlinable
    public func modifyLogFileRetentionPeriod(instanceId: String, days: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLogFileRetentionPeriodResponse> {
        self.modifyLogFileRetentionPeriod(.init(instanceId: instanceId, days: days), region: region, logger: logger, on: eventLoop)
    }

    /// 修改备份日志保存天数
    ///
    /// 本接口(ModifyLogFileRetentionPeriod)用于修改数据库备份日志保存天数。
    @inlinable
    public func modifyLogFileRetentionPeriod(instanceId: String, days: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLogFileRetentionPeriodResponse {
        try await self.modifyLogFileRetentionPeriod(.init(instanceId: instanceId, days: days), region: region, logger: logger, on: eventLoop)
    }
}
