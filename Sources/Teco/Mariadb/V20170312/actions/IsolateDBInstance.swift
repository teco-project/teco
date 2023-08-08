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
    /// IsolateDBInstance请求参数结构体
    public struct IsolateDBInstanceRequest: TCRequestModel {
        /// 实例 ID，格式如：tdsql-dasjkhd，与云数据库控制台页面中显示的实例 ID 相同，可使用 查询实例列表 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// IsolateDBInstance返回参数结构体
    public struct IsolateDBInstanceResponse: TCResponseModel {
        /// 隔离成功实例ID列表。
        public let successInstanceIds: [String]

        /// 隔离失败实例ID列表。
        public let failedInstanceIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successInstanceIds = "SuccessInstanceIds"
            case failedInstanceIds = "FailedInstanceIds"
            case requestId = "RequestId"
        }
    }

    /// 隔离MariaDB包年包月实例
    ///
    /// 本接口(IsolateDBInstance)用于隔离云数据库MariaDB实例（包年包月），隔离后不能通过IP和端口访问数据库。隔离的实例可在回收站中进行开机。若为欠费隔离，请尽快进行充值。
    @inlinable
    public func isolateDBInstance(_ input: IsolateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IsolateDBInstanceResponse> {
        self.client.execute(action: "IsolateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 隔离MariaDB包年包月实例
    ///
    /// 本接口(IsolateDBInstance)用于隔离云数据库MariaDB实例（包年包月），隔离后不能通过IP和端口访问数据库。隔离的实例可在回收站中进行开机。若为欠费隔离，请尽快进行充值。
    @inlinable
    public func isolateDBInstance(_ input: IsolateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateDBInstanceResponse {
        try await self.client.execute(action: "IsolateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 隔离MariaDB包年包月实例
    ///
    /// 本接口(IsolateDBInstance)用于隔离云数据库MariaDB实例（包年包月），隔离后不能通过IP和端口访问数据库。隔离的实例可在回收站中进行开机。若为欠费隔离，请尽快进行充值。
    @inlinable
    public func isolateDBInstance(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IsolateDBInstanceResponse> {
        self.isolateDBInstance(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 隔离MariaDB包年包月实例
    ///
    /// 本接口(IsolateDBInstance)用于隔离云数据库MariaDB实例（包年包月），隔离后不能通过IP和端口访问数据库。隔离的实例可在回收站中进行开机。若为欠费隔离，请尽快进行充值。
    @inlinable
    public func isolateDBInstance(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateDBInstanceResponse {
        try await self.isolateDBInstance(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
