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

extension Sqlserver {
    /// DeleteDB请求参数结构体
    public struct DeleteDBRequest: TCRequestModel {
        /// 实例ID，形如mssql-rljoi3bf
        public let instanceId: String

        /// 数据库名数组
        public let names: [String]

        public init(instanceId: String, names: [String]) {
            self.instanceId = instanceId
            self.names = names
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case names = "Names"
        }
    }

    /// DeleteDB返回参数结构体
    public struct DeleteDBResponse: TCResponseModel {
        /// 任务流ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 删除数据库
    ///
    /// 本接口(DeleteDB)用于删除数据库。
    @inlinable
    public func deleteDB(_ input: DeleteDBRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDBResponse> {
        self.client.execute(action: "DeleteDB", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除数据库
    ///
    /// 本接口(DeleteDB)用于删除数据库。
    @inlinable
    public func deleteDB(_ input: DeleteDBRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDBResponse {
        try await self.client.execute(action: "DeleteDB", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除数据库
    ///
    /// 本接口(DeleteDB)用于删除数据库。
    @inlinable
    public func deleteDB(instanceId: String, names: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDBResponse> {
        self.deleteDB(.init(instanceId: instanceId, names: names), region: region, logger: logger, on: eventLoop)
    }

    /// 删除数据库
    ///
    /// 本接口(DeleteDB)用于删除数据库。
    @inlinable
    public func deleteDB(instanceId: String, names: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDBResponse {
        try await self.deleteDB(.init(instanceId: instanceId, names: names), region: region, logger: logger, on: eventLoop)
    }
}
