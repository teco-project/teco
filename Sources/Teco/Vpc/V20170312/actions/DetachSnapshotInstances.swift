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

extension Vpc {
    /// DetachSnapshotInstances请求参数结构体
    public struct DetachSnapshotInstancesRequest: TCRequestModel {
        /// 快照策略Id。
        public let snapshotPolicyId: String

        /// 实例信息。
        public let instances: [SnapshotInstance]

        public init(snapshotPolicyId: String, instances: [SnapshotInstance]) {
            self.snapshotPolicyId = snapshotPolicyId
            self.instances = instances
        }

        enum CodingKeys: String, CodingKey {
            case snapshotPolicyId = "SnapshotPolicyId"
            case instances = "Instances"
        }
    }

    /// DetachSnapshotInstances返回参数结构体
    public struct DetachSnapshotInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 快照策略解关联实例
    ///
    /// 本接口（DetachSnapshotInstances）用于快照策略解关联实例。
    @inlinable @discardableResult
    public func detachSnapshotInstances(_ input: DetachSnapshotInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachSnapshotInstancesResponse> {
        self.client.execute(action: "DetachSnapshotInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 快照策略解关联实例
    ///
    /// 本接口（DetachSnapshotInstances）用于快照策略解关联实例。
    @inlinable @discardableResult
    public func detachSnapshotInstances(_ input: DetachSnapshotInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachSnapshotInstancesResponse {
        try await self.client.execute(action: "DetachSnapshotInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 快照策略解关联实例
    ///
    /// 本接口（DetachSnapshotInstances）用于快照策略解关联实例。
    @inlinable @discardableResult
    public func detachSnapshotInstances(snapshotPolicyId: String, instances: [SnapshotInstance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetachSnapshotInstancesResponse> {
        let input = DetachSnapshotInstancesRequest(snapshotPolicyId: snapshotPolicyId, instances: instances)
        return self.client.execute(action: "DetachSnapshotInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 快照策略解关联实例
    ///
    /// 本接口（DetachSnapshotInstances）用于快照策略解关联实例。
    @inlinable @discardableResult
    public func detachSnapshotInstances(snapshotPolicyId: String, instances: [SnapshotInstance], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachSnapshotInstancesResponse {
        let input = DetachSnapshotInstancesRequest(snapshotPolicyId: snapshotPolicyId, instances: instances)
        return try await self.client.execute(action: "DetachSnapshotInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
