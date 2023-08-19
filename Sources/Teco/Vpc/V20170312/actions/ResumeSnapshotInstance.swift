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

extension Vpc {
    /// ResumeSnapshotInstance请求参数结构体
    public struct ResumeSnapshotInstanceRequest: TCRequest {
        /// 快照策略Id。
        public let snapshotPolicyId: String

        /// 快照文件Id。
        public let snapshotFileId: String

        /// 实例Id。
        public let instanceId: String

        public init(snapshotPolicyId: String, snapshotFileId: String, instanceId: String) {
            self.snapshotPolicyId = snapshotPolicyId
            self.snapshotFileId = snapshotFileId
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case snapshotPolicyId = "SnapshotPolicyId"
            case snapshotFileId = "SnapshotFileId"
            case instanceId = "InstanceId"
        }
    }

    /// ResumeSnapshotInstance返回参数结构体
    public struct ResumeSnapshotInstanceResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 恢复安全组策略
    ///
    /// 本接口（ResumeSnapshotInstance）用于根据备份内容恢复安全组策略。
    @inlinable @discardableResult
    public func resumeSnapshotInstance(_ input: ResumeSnapshotInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResumeSnapshotInstanceResponse> {
        self.client.execute(action: "ResumeSnapshotInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 恢复安全组策略
    ///
    /// 本接口（ResumeSnapshotInstance）用于根据备份内容恢复安全组策略。
    @inlinable @discardableResult
    public func resumeSnapshotInstance(_ input: ResumeSnapshotInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResumeSnapshotInstanceResponse {
        try await self.client.execute(action: "ResumeSnapshotInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 恢复安全组策略
    ///
    /// 本接口（ResumeSnapshotInstance）用于根据备份内容恢复安全组策略。
    @inlinable @discardableResult
    public func resumeSnapshotInstance(snapshotPolicyId: String, snapshotFileId: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResumeSnapshotInstanceResponse> {
        self.resumeSnapshotInstance(.init(snapshotPolicyId: snapshotPolicyId, snapshotFileId: snapshotFileId, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 恢复安全组策略
    ///
    /// 本接口（ResumeSnapshotInstance）用于根据备份内容恢复安全组策略。
    @inlinable @discardableResult
    public func resumeSnapshotInstance(snapshotPolicyId: String, snapshotFileId: String, instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResumeSnapshotInstanceResponse {
        try await self.resumeSnapshotInstance(.init(snapshotPolicyId: snapshotPolicyId, snapshotFileId: snapshotFileId, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
