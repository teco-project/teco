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
    /// UnbindAutoSnapshotPolicy请求参数结构体
    public struct UnbindAutoSnapshotPolicyRequest: TCRequest {
        /// 要解绑的定期快照策略ID。
        public let autoSnapshotPolicyId: String

        /// 要解绑定期快照策略的云盘ID列表。
        public let diskIds: [String]?

        public init(autoSnapshotPolicyId: String, diskIds: [String]? = nil) {
            self.autoSnapshotPolicyId = autoSnapshotPolicyId
            self.diskIds = diskIds
        }

        enum CodingKeys: String, CodingKey {
            case autoSnapshotPolicyId = "AutoSnapshotPolicyId"
            case diskIds = "DiskIds"
        }
    }

    /// UnbindAutoSnapshotPolicy返回参数结构体
    public struct UnbindAutoSnapshotPolicyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 解绑定期快照策略
    ///
    /// 本接口（UnbindAutoSnapshotPolicy）用于解除云硬盘绑定的定期快照策略。
    ///
    /// * 支持批量操作，可一次解除多个云盘与同一定期快照策略的绑定。
    /// * 如果传入的云盘未绑定到当前定期快照策略，接口将自动跳过，仅解绑与当前定期快照策略绑定的云盘。
    @inlinable @discardableResult
    public func unbindAutoSnapshotPolicy(_ input: UnbindAutoSnapshotPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindAutoSnapshotPolicyResponse> {
        self.client.execute(action: "UnbindAutoSnapshotPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑定期快照策略
    ///
    /// 本接口（UnbindAutoSnapshotPolicy）用于解除云硬盘绑定的定期快照策略。
    ///
    /// * 支持批量操作，可一次解除多个云盘与同一定期快照策略的绑定。
    /// * 如果传入的云盘未绑定到当前定期快照策略，接口将自动跳过，仅解绑与当前定期快照策略绑定的云盘。
    @inlinable @discardableResult
    public func unbindAutoSnapshotPolicy(_ input: UnbindAutoSnapshotPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindAutoSnapshotPolicyResponse {
        try await self.client.execute(action: "UnbindAutoSnapshotPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑定期快照策略
    ///
    /// 本接口（UnbindAutoSnapshotPolicy）用于解除云硬盘绑定的定期快照策略。
    ///
    /// * 支持批量操作，可一次解除多个云盘与同一定期快照策略的绑定。
    /// * 如果传入的云盘未绑定到当前定期快照策略，接口将自动跳过，仅解绑与当前定期快照策略绑定的云盘。
    @inlinable @discardableResult
    public func unbindAutoSnapshotPolicy(autoSnapshotPolicyId: String, diskIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindAutoSnapshotPolicyResponse> {
        self.unbindAutoSnapshotPolicy(.init(autoSnapshotPolicyId: autoSnapshotPolicyId, diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑定期快照策略
    ///
    /// 本接口（UnbindAutoSnapshotPolicy）用于解除云硬盘绑定的定期快照策略。
    ///
    /// * 支持批量操作，可一次解除多个云盘与同一定期快照策略的绑定。
    /// * 如果传入的云盘未绑定到当前定期快照策略，接口将自动跳过，仅解绑与当前定期快照策略绑定的云盘。
    @inlinable @discardableResult
    public func unbindAutoSnapshotPolicy(autoSnapshotPolicyId: String, diskIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindAutoSnapshotPolicyResponse {
        try await self.unbindAutoSnapshotPolicy(.init(autoSnapshotPolicyId: autoSnapshotPolicyId, diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }
}
