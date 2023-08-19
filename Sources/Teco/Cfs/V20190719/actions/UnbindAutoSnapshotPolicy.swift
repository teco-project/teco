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

extension Cfs {
    /// UnbindAutoSnapshotPolicy请求参数结构体
    public struct UnbindAutoSnapshotPolicyRequest: TCRequest {
        /// 需要解绑的文件系统ID列表，用"," 分割
        public let fileSystemIds: String

        /// 解绑的快照ID
        public let autoSnapshotPolicyId: String

        public init(fileSystemIds: String, autoSnapshotPolicyId: String) {
            self.fileSystemIds = fileSystemIds
            self.autoSnapshotPolicyId = autoSnapshotPolicyId
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemIds = "FileSystemIds"
            case autoSnapshotPolicyId = "AutoSnapshotPolicyId"
        }
    }

    /// UnbindAutoSnapshotPolicy返回参数结构体
    public struct UnbindAutoSnapshotPolicyResponse: TCResponse {
        /// 快照策略ID
        public let autoSnapshotPolicyId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case autoSnapshotPolicyId = "AutoSnapshotPolicyId"
            case requestId = "RequestId"
        }
    }

    /// 解绑快照策略
    ///
    /// 解除文件系统绑定的快照策略
    @inlinable
    public func unbindAutoSnapshotPolicy(_ input: UnbindAutoSnapshotPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindAutoSnapshotPolicyResponse> {
        self.client.execute(action: "UnbindAutoSnapshotPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解绑快照策略
    ///
    /// 解除文件系统绑定的快照策略
    @inlinable
    public func unbindAutoSnapshotPolicy(_ input: UnbindAutoSnapshotPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindAutoSnapshotPolicyResponse {
        try await self.client.execute(action: "UnbindAutoSnapshotPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解绑快照策略
    ///
    /// 解除文件系统绑定的快照策略
    @inlinable
    public func unbindAutoSnapshotPolicy(fileSystemIds: String, autoSnapshotPolicyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UnbindAutoSnapshotPolicyResponse> {
        self.unbindAutoSnapshotPolicy(.init(fileSystemIds: fileSystemIds, autoSnapshotPolicyId: autoSnapshotPolicyId), region: region, logger: logger, on: eventLoop)
    }

    /// 解绑快照策略
    ///
    /// 解除文件系统绑定的快照策略
    @inlinable
    public func unbindAutoSnapshotPolicy(fileSystemIds: String, autoSnapshotPolicyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UnbindAutoSnapshotPolicyResponse {
        try await self.unbindAutoSnapshotPolicy(.init(fileSystemIds: fileSystemIds, autoSnapshotPolicyId: autoSnapshotPolicyId), region: region, logger: logger, on: eventLoop)
    }
}
