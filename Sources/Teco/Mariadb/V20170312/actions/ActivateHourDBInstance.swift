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
    /// ActivateHourDBInstance请求参数结构体
    public struct ActivateHourDBInstanceRequest: TCRequest {
        /// 实例ID列表
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// ActivateHourDBInstance返回参数结构体
    public struct ActivateHourDBInstanceResponse: TCResponse {
        /// 隔离成功的实例id列表
        public let successInstanceIds: [String]

        /// 隔离失败的实例id列表
        public let failedInstanceIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case successInstanceIds = "SuccessInstanceIds"
            case failedInstanceIds = "FailedInstanceIds"
            case requestId = "RequestId"
        }
    }

    /// 解隔离MariaDB按量计费实例
    @inlinable
    public func activateHourDBInstance(_ input: ActivateHourDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ActivateHourDBInstanceResponse> {
        self.client.execute(action: "ActivateHourDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解隔离MariaDB按量计费实例
    @inlinable
    public func activateHourDBInstance(_ input: ActivateHourDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ActivateHourDBInstanceResponse {
        try await self.client.execute(action: "ActivateHourDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解隔离MariaDB按量计费实例
    @inlinable
    public func activateHourDBInstance(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ActivateHourDBInstanceResponse> {
        self.activateHourDBInstance(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 解隔离MariaDB按量计费实例
    @inlinable
    public func activateHourDBInstance(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ActivateHourDBInstanceResponse {
        try await self.activateHourDBInstance(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
