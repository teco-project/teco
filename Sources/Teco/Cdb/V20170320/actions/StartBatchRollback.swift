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

extension Cdb {
    /// StartBatchRollback请求参数结构体
    public struct StartBatchRollbackRequest: TCRequest {
        /// 用于回档的实例详情信息。
        public let instances: [RollbackInstancesInfo]

        public init(instances: [RollbackInstancesInfo]) {
            self.instances = instances
        }

        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
        }
    }

    /// StartBatchRollback返回参数结构体
    public struct StartBatchRollbackResponse: TCResponse {
        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 回档数据库表
    ///
    /// 该接口（StartBatchRollback）用于批量回档云数据库实例的库表。
    @inlinable
    public func startBatchRollback(_ input: StartBatchRollbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartBatchRollbackResponse> {
        self.client.execute(action: "StartBatchRollback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 回档数据库表
    ///
    /// 该接口（StartBatchRollback）用于批量回档云数据库实例的库表。
    @inlinable
    public func startBatchRollback(_ input: StartBatchRollbackRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartBatchRollbackResponse {
        try await self.client.execute(action: "StartBatchRollback", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 回档数据库表
    ///
    /// 该接口（StartBatchRollback）用于批量回档云数据库实例的库表。
    @inlinable
    public func startBatchRollback(instances: [RollbackInstancesInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartBatchRollbackResponse> {
        self.startBatchRollback(.init(instances: instances), region: region, logger: logger, on: eventLoop)
    }

    /// 回档数据库表
    ///
    /// 该接口（StartBatchRollback）用于批量回档云数据库实例的库表。
    @inlinable
    public func startBatchRollback(instances: [RollbackInstancesInfo], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartBatchRollbackResponse {
        try await self.startBatchRollback(.init(instances: instances), region: region, logger: logger, on: eventLoop)
    }
}
