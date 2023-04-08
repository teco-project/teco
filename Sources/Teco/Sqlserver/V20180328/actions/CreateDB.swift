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

import TecoCore

extension Sqlserver {
    /// CreateDB请求参数结构体
    public struct CreateDBRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 数据库创建信息
        public let dBs: [DBCreateInfo]

        public init(instanceId: String, dBs: [DBCreateInfo]) {
            self.instanceId = instanceId
            self.dBs = dBs
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dBs = "DBs"
        }
    }

    /// CreateDB返回参数结构体
    public struct CreateDBResponse: TCResponseModel {
        /// 任务流ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 创建数据库
    ///
    /// 本接口（CreateDB）用于创建数据库。
    @inlinable
    public func createDB(_ input: CreateDBRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBResponse> {
        self.client.execute(action: "CreateDB", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建数据库
    ///
    /// 本接口（CreateDB）用于创建数据库。
    @inlinable
    public func createDB(_ input: CreateDBRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBResponse {
        try await self.client.execute(action: "CreateDB", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建数据库
    ///
    /// 本接口（CreateDB）用于创建数据库。
    @inlinable
    public func createDB(instanceId: String, dBs: [DBCreateInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBResponse> {
        self.createDB(.init(instanceId: instanceId, dBs: dBs), region: region, logger: logger, on: eventLoop)
    }

    /// 创建数据库
    ///
    /// 本接口（CreateDB）用于创建数据库。
    @inlinable
    public func createDB(instanceId: String, dBs: [DBCreateInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBResponse {
        try await self.createDB(.init(instanceId: instanceId, dBs: dBs), region: region, logger: logger, on: eventLoop)
    }
}
