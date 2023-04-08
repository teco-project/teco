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

extension Dcdb {
    /// ModifyDBSyncMode请求参数结构体
    public struct ModifyDBSyncModeRequest: TCRequestModel {
        /// 待修改同步模式的实例ID。形如：dcdbt-ow728lmc。
        public let instanceId: String

        /// 同步模式：0 异步，1 强同步， 2 强同步可退化
        public let syncMode: Int64

        public init(instanceId: String, syncMode: Int64) {
            self.instanceId = instanceId
            self.syncMode = syncMode
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case syncMode = "SyncMode"
        }
    }

    /// ModifyDBSyncMode返回参数结构体
    public struct ModifyDBSyncModeResponse: TCResponseModel {
        /// 异步任务Id，可通过 DescribeFlow 查询任务状态。
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 修改同步模式
    ///
    /// 本接口（ModifyDBSyncMode）用于修改云数据库实例的同步模式。
    @inlinable
    public func modifyDBSyncMode(_ input: ModifyDBSyncModeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBSyncModeResponse> {
        self.client.execute(action: "ModifyDBSyncMode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改同步模式
    ///
    /// 本接口（ModifyDBSyncMode）用于修改云数据库实例的同步模式。
    @inlinable
    public func modifyDBSyncMode(_ input: ModifyDBSyncModeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBSyncModeResponse {
        try await self.client.execute(action: "ModifyDBSyncMode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改同步模式
    ///
    /// 本接口（ModifyDBSyncMode）用于修改云数据库实例的同步模式。
    @inlinable
    public func modifyDBSyncMode(instanceId: String, syncMode: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDBSyncModeResponse> {
        self.modifyDBSyncMode(.init(instanceId: instanceId, syncMode: syncMode), region: region, logger: logger, on: eventLoop)
    }

    /// 修改同步模式
    ///
    /// 本接口（ModifyDBSyncMode）用于修改云数据库实例的同步模式。
    @inlinable
    public func modifyDBSyncMode(instanceId: String, syncMode: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDBSyncModeResponse {
        try await self.modifyDBSyncMode(.init(instanceId: instanceId, syncMode: syncMode), region: region, logger: logger, on: eventLoop)
    }
}
