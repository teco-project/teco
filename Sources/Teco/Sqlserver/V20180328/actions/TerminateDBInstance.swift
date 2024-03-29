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

extension Sqlserver {
    /// TerminateDBInstance请求参数结构体
    public struct TerminateDBInstanceRequest: TCRequest {
        /// 主动销毁的实例ID列表，格式如：[mssql-3l3fgqn7]。与云数据库控制台页面中显示的实例ID相同
        public let instanceIdSet: [String]

        public init(instanceIdSet: [String]) {
            self.instanceIdSet = instanceIdSet
        }

        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
        }
    }

    /// TerminateDBInstance返回参数结构体
    public struct TerminateDBInstanceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 主动隔离实例
    ///
    /// 本接口(TerminateDBInstance)用于主动隔离实例，使得实例进入回收站。
    @inlinable @discardableResult
    public func terminateDBInstance(_ input: TerminateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateDBInstanceResponse> {
        self.client.execute(action: "TerminateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 主动隔离实例
    ///
    /// 本接口(TerminateDBInstance)用于主动隔离实例，使得实例进入回收站。
    @inlinable @discardableResult
    public func terminateDBInstance(_ input: TerminateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateDBInstanceResponse {
        try await self.client.execute(action: "TerminateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 主动隔离实例
    ///
    /// 本接口(TerminateDBInstance)用于主动隔离实例，使得实例进入回收站。
    @inlinable @discardableResult
    public func terminateDBInstance(instanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateDBInstanceResponse> {
        self.terminateDBInstance(.init(instanceIdSet: instanceIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 主动隔离实例
    ///
    /// 本接口(TerminateDBInstance)用于主动隔离实例，使得实例进入回收站。
    @inlinable @discardableResult
    public func terminateDBInstance(instanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateDBInstanceResponse {
        try await self.terminateDBInstance(.init(instanceIdSet: instanceIdSet), region: region, logger: logger, on: eventLoop)
    }
}
