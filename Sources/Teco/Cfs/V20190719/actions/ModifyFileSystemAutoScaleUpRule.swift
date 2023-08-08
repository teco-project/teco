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
    /// ModifyFileSystemAutoScaleUpRule请求参数结构体
    public struct ModifyFileSystemAutoScaleUpRuleRequest: TCRequestModel {
        /// 文件系统id
        public let fileSystemId: String

        /// 扩容阈值，范围[10-90]
        public let scaleUpThreshold: UInt64

        /// 扩容后目标阈值,范围[10-90],该值要小于ScaleUpThreshold
        public let targetThreshold: UInt64

        /// 规则状态0:关闭，1 开启
        public let status: UInt64?

        public init(fileSystemId: String, scaleUpThreshold: UInt64, targetThreshold: UInt64, status: UInt64? = nil) {
            self.fileSystemId = fileSystemId
            self.scaleUpThreshold = scaleUpThreshold
            self.targetThreshold = targetThreshold
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case scaleUpThreshold = "ScaleUpThreshold"
            case targetThreshold = "TargetThreshold"
            case status = "Status"
        }
    }

    /// ModifyFileSystemAutoScaleUpRule返回参数结构体
    public struct ModifyFileSystemAutoScaleUpRuleResponse: TCResponseModel {
        /// 文件系统id
        public let fileSystemId: String

        /// 规则状态0:关闭，1 开启
        public let status: UInt64

        /// 扩容阈值,范围[10-90]
        public let scaleUpThreshold: UInt64

        /// 扩容后达到阈值,范围[10-90]
        public let targetThreshold: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileSystemId = "FileSystemId"
            case status = "Status"
            case scaleUpThreshold = "ScaleUpThreshold"
            case targetThreshold = "TargetThreshold"
            case requestId = "RequestId"
        }
    }

    /// 更新文件系统自动扩容策略
    ///
    /// 用来设置文件系统扩容策略
    @inlinable
    public func modifyFileSystemAutoScaleUpRule(_ input: ModifyFileSystemAutoScaleUpRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyFileSystemAutoScaleUpRuleResponse> {
        self.client.execute(action: "ModifyFileSystemAutoScaleUpRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新文件系统自动扩容策略
    ///
    /// 用来设置文件系统扩容策略
    @inlinable
    public func modifyFileSystemAutoScaleUpRule(_ input: ModifyFileSystemAutoScaleUpRuleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFileSystemAutoScaleUpRuleResponse {
        try await self.client.execute(action: "ModifyFileSystemAutoScaleUpRule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新文件系统自动扩容策略
    ///
    /// 用来设置文件系统扩容策略
    @inlinable
    public func modifyFileSystemAutoScaleUpRule(fileSystemId: String, scaleUpThreshold: UInt64, targetThreshold: UInt64, status: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyFileSystemAutoScaleUpRuleResponse> {
        self.modifyFileSystemAutoScaleUpRule(.init(fileSystemId: fileSystemId, scaleUpThreshold: scaleUpThreshold, targetThreshold: targetThreshold, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 更新文件系统自动扩容策略
    ///
    /// 用来设置文件系统扩容策略
    @inlinable
    public func modifyFileSystemAutoScaleUpRule(fileSystemId: String, scaleUpThreshold: UInt64, targetThreshold: UInt64, status: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFileSystemAutoScaleUpRuleResponse {
        try await self.modifyFileSystemAutoScaleUpRule(.init(fileSystemId: fileSystemId, scaleUpThreshold: scaleUpThreshold, targetThreshold: targetThreshold, status: status), region: region, logger: logger, on: eventLoop)
    }
}
