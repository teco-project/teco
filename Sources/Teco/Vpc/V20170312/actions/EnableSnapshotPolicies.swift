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
    /// EnableSnapshotPolicies请求参数结构体
    public struct EnableSnapshotPoliciesRequest: TCRequestModel {
        /// 快照策略Id。
        public let snapshotPolicyIds: [String]

        public init(snapshotPolicyIds: [String]) {
            self.snapshotPolicyIds = snapshotPolicyIds
        }

        enum CodingKeys: String, CodingKey {
            case snapshotPolicyIds = "SnapshotPolicyIds"
        }
    }

    /// EnableSnapshotPolicies返回参数结构体
    public struct EnableSnapshotPoliciesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用快照策略
    ///
    /// 本接口（EnableSnapshotPolicies）用于启用快照策略。
    @inlinable @discardableResult
    public func enableSnapshotPolicies(_ input: EnableSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableSnapshotPoliciesResponse> {
        self.client.execute(action: "EnableSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用快照策略
    ///
    /// 本接口（EnableSnapshotPolicies）用于启用快照策略。
    @inlinable @discardableResult
    public func enableSnapshotPolicies(_ input: EnableSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableSnapshotPoliciesResponse {
        try await self.client.execute(action: "EnableSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用快照策略
    ///
    /// 本接口（EnableSnapshotPolicies）用于启用快照策略。
    @inlinable @discardableResult
    public func enableSnapshotPolicies(snapshotPolicyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableSnapshotPoliciesResponse> {
        self.enableSnapshotPolicies(.init(snapshotPolicyIds: snapshotPolicyIds), region: region, logger: logger, on: eventLoop)
    }

    /// 启用快照策略
    ///
    /// 本接口（EnableSnapshotPolicies）用于启用快照策略。
    @inlinable @discardableResult
    public func enableSnapshotPolicies(snapshotPolicyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableSnapshotPoliciesResponse {
        try await self.enableSnapshotPolicies(.init(snapshotPolicyIds: snapshotPolicyIds), region: region, logger: logger, on: eventLoop)
    }
}
