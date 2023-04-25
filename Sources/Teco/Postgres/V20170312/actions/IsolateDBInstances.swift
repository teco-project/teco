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

extension Postgres {
    /// IsolateDBInstances请求参数结构体
    public struct IsolateDBInstancesRequest: TCRequestModel {
        /// 实例ID集合。注意：当前已不支持同时隔离多个实例，这里只能传入单个实例ID。
        public let dbInstanceIdSet: [String]

        public init(dbInstanceIdSet: [String]) {
            self.dbInstanceIdSet = dbInstanceIdSet
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceIdSet = "DBInstanceIdSet"
        }
    }

    /// IsolateDBInstances返回参数结构体
    public struct IsolateDBInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 隔离实例
    ///
    /// 本接口（IsolateDBInstances）用于隔离实例
    @inlinable @discardableResult
    public func isolateDBInstances(_ input: IsolateDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IsolateDBInstancesResponse> {
        self.client.execute(action: "IsolateDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 隔离实例
    ///
    /// 本接口（IsolateDBInstances）用于隔离实例
    @inlinable @discardableResult
    public func isolateDBInstances(_ input: IsolateDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateDBInstancesResponse {
        try await self.client.execute(action: "IsolateDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 隔离实例
    ///
    /// 本接口（IsolateDBInstances）用于隔离实例
    @inlinable @discardableResult
    public func isolateDBInstances(dbInstanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<IsolateDBInstancesResponse> {
        self.isolateDBInstances(.init(dbInstanceIdSet: dbInstanceIdSet), region: region, logger: logger, on: eventLoop)
    }

    /// 隔离实例
    ///
    /// 本接口（IsolateDBInstances）用于隔离实例
    @inlinable @discardableResult
    public func isolateDBInstances(dbInstanceIdSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateDBInstancesResponse {
        try await self.isolateDBInstances(.init(dbInstanceIdSet: dbInstanceIdSet), region: region, logger: logger, on: eventLoop)
    }
}
