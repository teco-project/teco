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
    /// CloneDB请求参数结构体
    public struct CloneDBRequest: TCRequestModel {
        /// 实例ID，形如mssql-j8kv137v
        public let instanceId: String

        /// 按照ReNameRestoreDatabase中的库进行克隆，并重命名，新库名称必须指定
        public let renameRestore: [RenameRestoreDatabase]

        public init(instanceId: String, renameRestore: [RenameRestoreDatabase]) {
            self.instanceId = instanceId
            self.renameRestore = renameRestore
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case renameRestore = "RenameRestore"
        }
    }

    /// CloneDB返回参数结构体
    public struct CloneDBResponse: TCResponseModel {
        /// 异步流程任务ID，使用FlowId调用DescribeFlowStatus接口获取任务执行状态
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 克隆数据库
    ///
    /// 本接口（CloneDB）用于克隆数据库，只支持克隆到本实例，克隆时必须指定新库名称。
    @inlinable
    public func cloneDB(_ input: CloneDBRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloneDBResponse> {
        self.client.execute(action: "CloneDB", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 克隆数据库
    ///
    /// 本接口（CloneDB）用于克隆数据库，只支持克隆到本实例，克隆时必须指定新库名称。
    @inlinable
    public func cloneDB(_ input: CloneDBRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneDBResponse {
        try await self.client.execute(action: "CloneDB", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 克隆数据库
    ///
    /// 本接口（CloneDB）用于克隆数据库，只支持克隆到本实例，克隆时必须指定新库名称。
    @inlinable
    public func cloneDB(instanceId: String, renameRestore: [RenameRestoreDatabase], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloneDBResponse> {
        let input = CloneDBRequest(instanceId: instanceId, renameRestore: renameRestore)
        return self.client.execute(action: "CloneDB", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 克隆数据库
    ///
    /// 本接口（CloneDB）用于克隆数据库，只支持克隆到本实例，克隆时必须指定新库名称。
    @inlinable
    public func cloneDB(instanceId: String, renameRestore: [RenameRestoreDatabase], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneDBResponse {
        let input = CloneDBRequest(instanceId: instanceId, renameRestore: renameRestore)
        return try await self.client.execute(action: "CloneDB", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
