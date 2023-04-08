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

extension Sqlserver {
    /// RenewPostpaidDBInstance请求参数结构体
    public struct RenewPostpaidDBInstanceRequest: TCRequestModel {
        /// 实例ID，格式如：mssql-3l3fgqn7 或 mssqlro-3l3fgqn7
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// RenewPostpaidDBInstance返回参数结构体
    public struct RenewPostpaidDBInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 恢复后付费实例
    ///
    /// 本接口（RenewPostpaidDBInstance）用于将通过接口TerminateDBInstance手动隔离的按量计费实例从回收站中恢复。
    @inlinable @discardableResult
    public func renewPostpaidDBInstance(_ input: RenewPostpaidDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewPostpaidDBInstanceResponse> {
        self.client.execute(action: "RenewPostpaidDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 恢复后付费实例
    ///
    /// 本接口（RenewPostpaidDBInstance）用于将通过接口TerminateDBInstance手动隔离的按量计费实例从回收站中恢复。
    @inlinable @discardableResult
    public func renewPostpaidDBInstance(_ input: RenewPostpaidDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewPostpaidDBInstanceResponse {
        try await self.client.execute(action: "RenewPostpaidDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 恢复后付费实例
    ///
    /// 本接口（RenewPostpaidDBInstance）用于将通过接口TerminateDBInstance手动隔离的按量计费实例从回收站中恢复。
    @inlinable @discardableResult
    public func renewPostpaidDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RenewPostpaidDBInstanceResponse> {
        self.renewPostpaidDBInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 恢复后付费实例
    ///
    /// 本接口（RenewPostpaidDBInstance）用于将通过接口TerminateDBInstance手动隔离的按量计费实例从回收站中恢复。
    @inlinable @discardableResult
    public func renewPostpaidDBInstance(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RenewPostpaidDBInstanceResponse {
        try await self.renewPostpaidDBInstance(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
