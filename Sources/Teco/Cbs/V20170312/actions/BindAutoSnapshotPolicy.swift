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
    /// BindAutoSnapshotPolicy请求参数结构体
    public struct BindAutoSnapshotPolicyRequest: TCRequest {
        /// 要绑定的定期快照策略ID。
        public let autoSnapshotPolicyId: String

        /// 要绑定的云硬盘ID列表，一次请求最多绑定80块云盘。
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

    /// BindAutoSnapshotPolicy返回参数结构体
    public struct BindAutoSnapshotPolicyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 绑定定期快照策略
    ///
    /// 本接口（BindAutoSnapshotPolicy）用于绑定云硬盘到指定的定期快照策略。
    ///
    /// * 每个地域下的定期快照策略配额限制请参考文档[定期快照](/document/product/362/8191)。
    /// * 当已绑定定期快照策略的云硬盘处于未使用状态（即弹性云盘未挂载或非弹性云盘的主机处于关机状态）将不会创建定期快照。
    @inlinable @discardableResult
    public func bindAutoSnapshotPolicy(_ input: BindAutoSnapshotPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindAutoSnapshotPolicyResponse> {
        self.client.execute(action: "BindAutoSnapshotPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 绑定定期快照策略
    ///
    /// 本接口（BindAutoSnapshotPolicy）用于绑定云硬盘到指定的定期快照策略。
    ///
    /// * 每个地域下的定期快照策略配额限制请参考文档[定期快照](/document/product/362/8191)。
    /// * 当已绑定定期快照策略的云硬盘处于未使用状态（即弹性云盘未挂载或非弹性云盘的主机处于关机状态）将不会创建定期快照。
    @inlinable @discardableResult
    public func bindAutoSnapshotPolicy(_ input: BindAutoSnapshotPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindAutoSnapshotPolicyResponse {
        try await self.client.execute(action: "BindAutoSnapshotPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 绑定定期快照策略
    ///
    /// 本接口（BindAutoSnapshotPolicy）用于绑定云硬盘到指定的定期快照策略。
    ///
    /// * 每个地域下的定期快照策略配额限制请参考文档[定期快照](/document/product/362/8191)。
    /// * 当已绑定定期快照策略的云硬盘处于未使用状态（即弹性云盘未挂载或非弹性云盘的主机处于关机状态）将不会创建定期快照。
    @inlinable @discardableResult
    public func bindAutoSnapshotPolicy(autoSnapshotPolicyId: String, diskIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BindAutoSnapshotPolicyResponse> {
        self.bindAutoSnapshotPolicy(.init(autoSnapshotPolicyId: autoSnapshotPolicyId, diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }

    /// 绑定定期快照策略
    ///
    /// 本接口（BindAutoSnapshotPolicy）用于绑定云硬盘到指定的定期快照策略。
    ///
    /// * 每个地域下的定期快照策略配额限制请参考文档[定期快照](/document/product/362/8191)。
    /// * 当已绑定定期快照策略的云硬盘处于未使用状态（即弹性云盘未挂载或非弹性云盘的主机处于关机状态）将不会创建定期快照。
    @inlinable @discardableResult
    public func bindAutoSnapshotPolicy(autoSnapshotPolicyId: String, diskIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindAutoSnapshotPolicyResponse {
        try await self.bindAutoSnapshotPolicy(.init(autoSnapshotPolicyId: autoSnapshotPolicyId, diskIds: diskIds), region: region, logger: logger, on: eventLoop)
    }
}
