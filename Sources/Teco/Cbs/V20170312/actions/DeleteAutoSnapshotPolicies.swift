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

extension Cbs {
    /// DeleteAutoSnapshotPolicies请求参数结构体
    public struct DeleteAutoSnapshotPoliciesRequest: TCRequest {
        /// 要删除的定期快照策略ID列表。
        public let autoSnapshotPolicyIds: [String]

        public init(autoSnapshotPolicyIds: [String]) {
            self.autoSnapshotPolicyIds = autoSnapshotPolicyIds
        }

        enum CodingKeys: String, CodingKey {
            case autoSnapshotPolicyIds = "AutoSnapshotPolicyIds"
        }
    }

    /// DeleteAutoSnapshotPolicies返回参数结构体
    public struct DeleteAutoSnapshotPoliciesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除定期快照策略
    ///
    /// 本接口（DeleteAutoSnapshotPolicies）用于删除定期快照策略。
    ///
    /// *  支持批量操作。如果多个定期快照策略存在无法删除的，则操作不执行，以特定错误码返回。
    @inlinable @discardableResult
    public func deleteAutoSnapshotPolicies(_ input: DeleteAutoSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAutoSnapshotPoliciesResponse> {
        self.client.execute(action: "DeleteAutoSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除定期快照策略
    ///
    /// 本接口（DeleteAutoSnapshotPolicies）用于删除定期快照策略。
    ///
    /// *  支持批量操作。如果多个定期快照策略存在无法删除的，则操作不执行，以特定错误码返回。
    @inlinable @discardableResult
    public func deleteAutoSnapshotPolicies(_ input: DeleteAutoSnapshotPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAutoSnapshotPoliciesResponse {
        try await self.client.execute(action: "DeleteAutoSnapshotPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除定期快照策略
    ///
    /// 本接口（DeleteAutoSnapshotPolicies）用于删除定期快照策略。
    ///
    /// *  支持批量操作。如果多个定期快照策略存在无法删除的，则操作不执行，以特定错误码返回。
    @inlinable @discardableResult
    public func deleteAutoSnapshotPolicies(autoSnapshotPolicyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAutoSnapshotPoliciesResponse> {
        self.deleteAutoSnapshotPolicies(.init(autoSnapshotPolicyIds: autoSnapshotPolicyIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除定期快照策略
    ///
    /// 本接口（DeleteAutoSnapshotPolicies）用于删除定期快照策略。
    ///
    /// *  支持批量操作。如果多个定期快照策略存在无法删除的，则操作不执行，以特定错误码返回。
    @inlinable @discardableResult
    public func deleteAutoSnapshotPolicies(autoSnapshotPolicyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAutoSnapshotPoliciesResponse {
        try await self.deleteAutoSnapshotPolicies(.init(autoSnapshotPolicyIds: autoSnapshotPolicyIds), region: region, logger: logger, on: eventLoop)
    }
}
