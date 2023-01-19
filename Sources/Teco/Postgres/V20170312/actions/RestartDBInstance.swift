//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Postgres {
    /// RestartDBInstance请求参数结构体
    public struct RestartDBInstanceRequest: TCRequestModel {
        /// 实例ID，形如postgres-6r233v55
        public let dbInstanceId: String

        public init(dbInstanceId: String) {
            self.dbInstanceId = dbInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
        }
    }

    /// RestartDBInstance返回参数结构体
    public struct RestartDBInstanceResponse: TCResponseModel {
        /// 异步流程ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 重启实例
    ///
    /// 本接口（RestartDBInstance）用于重启实例。
    @inlinable
    public func restartDBInstance(_ input: RestartDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartDBInstanceResponse> {
        self.client.execute(action: "RestartDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重启实例
    ///
    /// 本接口（RestartDBInstance）用于重启实例。
    @inlinable
    public func restartDBInstance(_ input: RestartDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartDBInstanceResponse {
        try await self.client.execute(action: "RestartDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重启实例
    ///
    /// 本接口（RestartDBInstance）用于重启实例。
    @inlinable
    public func restartDBInstance(dbInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartDBInstanceResponse> {
        self.restartDBInstance(RestartDBInstanceRequest(dbInstanceId: dbInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 重启实例
    ///
    /// 本接口（RestartDBInstance）用于重启实例。
    @inlinable
    public func restartDBInstance(dbInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartDBInstanceResponse {
        try await self.restartDBInstance(RestartDBInstanceRequest(dbInstanceId: dbInstanceId), region: region, logger: logger, on: eventLoop)
    }
}
