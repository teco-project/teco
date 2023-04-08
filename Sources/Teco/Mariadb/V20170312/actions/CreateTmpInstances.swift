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

extension Mariadb {
    /// CreateTmpInstances请求参数结构体
    public struct CreateTmpInstancesRequest: TCRequestModel {
        /// 回档实例的ID列表，形如：tdsql-ow728lmc。
        public let instanceIds: [String]

        /// 回档时间点
        public let rollbackTime: String

        public init(instanceIds: [String], rollbackTime: String) {
            self.instanceIds = instanceIds
            self.rollbackTime = rollbackTime
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case rollbackTime = "RollbackTime"
        }
    }

    /// CreateTmpInstances返回参数结构体
    public struct CreateTmpInstancesResponse: TCResponseModel {
        /// 异步任务流程ID。
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 创建临时实例
    ///
    /// 本接口（CreateTmpInstances）用于创建临时实例。
    @inlinable
    public func createTmpInstances(_ input: CreateTmpInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTmpInstancesResponse> {
        self.client.execute(action: "CreateTmpInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建临时实例
    ///
    /// 本接口（CreateTmpInstances）用于创建临时实例。
    @inlinable
    public func createTmpInstances(_ input: CreateTmpInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTmpInstancesResponse {
        try await self.client.execute(action: "CreateTmpInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建临时实例
    ///
    /// 本接口（CreateTmpInstances）用于创建临时实例。
    @inlinable
    public func createTmpInstances(instanceIds: [String], rollbackTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTmpInstancesResponse> {
        self.createTmpInstances(.init(instanceIds: instanceIds, rollbackTime: rollbackTime), region: region, logger: logger, on: eventLoop)
    }

    /// 创建临时实例
    ///
    /// 本接口（CreateTmpInstances）用于创建临时实例。
    @inlinable
    public func createTmpInstances(instanceIds: [String], rollbackTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTmpInstancesResponse {
        try await self.createTmpInstances(.init(instanceIds: instanceIds, rollbackTime: rollbackTime), region: region, logger: logger, on: eventLoop)
    }
}
