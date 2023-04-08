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

extension Lighthouse {
    /// CreateInstanceSnapshot请求参数结构体
    public struct CreateInstanceSnapshotRequest: TCRequestModel {
        /// 需要创建快照的实例 ID。
        public let instanceId: String

        /// 快照名称，最长为 60 个字符。
        public let snapshotName: String?

        public init(instanceId: String, snapshotName: String? = nil) {
            self.instanceId = instanceId
            self.snapshotName = snapshotName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case snapshotName = "SnapshotName"
        }
    }

    /// CreateInstanceSnapshot返回参数结构体
    public struct CreateInstanceSnapshotResponse: TCResponseModel {
        /// 快照 ID。
        public let snapshotId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case snapshotId = "SnapshotId"
            case requestId = "RequestId"
        }
    }

    /// 创建实例快照
    ///
    /// 本接口（CreateInstanceSnapshot）用于创建指定实例的系统盘快照。
    @inlinable
    public func createInstanceSnapshot(_ input: CreateInstanceSnapshotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceSnapshotResponse> {
        self.client.execute(action: "CreateInstanceSnapshot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建实例快照
    ///
    /// 本接口（CreateInstanceSnapshot）用于创建指定实例的系统盘快照。
    @inlinable
    public func createInstanceSnapshot(_ input: CreateInstanceSnapshotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceSnapshotResponse {
        try await self.client.execute(action: "CreateInstanceSnapshot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建实例快照
    ///
    /// 本接口（CreateInstanceSnapshot）用于创建指定实例的系统盘快照。
    @inlinable
    public func createInstanceSnapshot(instanceId: String, snapshotName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateInstanceSnapshotResponse> {
        self.createInstanceSnapshot(.init(instanceId: instanceId, snapshotName: snapshotName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建实例快照
    ///
    /// 本接口（CreateInstanceSnapshot）用于创建指定实例的系统盘快照。
    @inlinable
    public func createInstanceSnapshot(instanceId: String, snapshotName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateInstanceSnapshotResponse {
        try await self.createInstanceSnapshot(.init(instanceId: instanceId, snapshotName: snapshotName), region: region, logger: logger, on: eventLoop)
    }
}
