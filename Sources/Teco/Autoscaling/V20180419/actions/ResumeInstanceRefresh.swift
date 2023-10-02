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

extension As {
    /// ResumeInstanceRefresh请求参数结构体
    public struct ResumeInstanceRefreshRequest: TCRequest {
        /// 伸缩组ID。
        public let autoScalingGroupId: String

        /// 刷新活动ID。
        public let refreshActivityId: String

        /// 当前批次刷新失败实例的恢复方式，如不存在失败实例，该参数无效。默认值为RETRY，取值范围如下：
        ///
        /// - RETRY: 重试当前批次刷新失败实例
        /// - CONTINUE: 跳过当前批次刷新失败实例
        public let resumeMode: String?

        public init(autoScalingGroupId: String, refreshActivityId: String, resumeMode: String? = nil) {
            self.autoScalingGroupId = autoScalingGroupId
            self.refreshActivityId = refreshActivityId
            self.resumeMode = resumeMode
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case refreshActivityId = "RefreshActivityId"
            case resumeMode = "ResumeMode"
        }
    }

    /// ResumeInstanceRefresh返回参数结构体
    public struct ResumeInstanceRefreshResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 恢复实例刷新
    ///
    /// 恢复暂停状态的实例刷新活动，使其重试当前批次刷新失败实例或继续刷新后续批次，非暂停状态下调用该接口无效。
    @inlinable @discardableResult
    public func resumeInstanceRefresh(_ input: ResumeInstanceRefreshRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResumeInstanceRefreshResponse> {
        self.client.execute(action: "ResumeInstanceRefresh", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 恢复实例刷新
    ///
    /// 恢复暂停状态的实例刷新活动，使其重试当前批次刷新失败实例或继续刷新后续批次，非暂停状态下调用该接口无效。
    @inlinable @discardableResult
    public func resumeInstanceRefresh(_ input: ResumeInstanceRefreshRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResumeInstanceRefreshResponse {
        try await self.client.execute(action: "ResumeInstanceRefresh", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 恢复实例刷新
    ///
    /// 恢复暂停状态的实例刷新活动，使其重试当前批次刷新失败实例或继续刷新后续批次，非暂停状态下调用该接口无效。
    @inlinable @discardableResult
    public func resumeInstanceRefresh(autoScalingGroupId: String, refreshActivityId: String, resumeMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResumeInstanceRefreshResponse> {
        self.resumeInstanceRefresh(.init(autoScalingGroupId: autoScalingGroupId, refreshActivityId: refreshActivityId, resumeMode: resumeMode), region: region, logger: logger, on: eventLoop)
    }

    /// 恢复实例刷新
    ///
    /// 恢复暂停状态的实例刷新活动，使其重试当前批次刷新失败实例或继续刷新后续批次，非暂停状态下调用该接口无效。
    @inlinable @discardableResult
    public func resumeInstanceRefresh(autoScalingGroupId: String, refreshActivityId: String, resumeMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResumeInstanceRefreshResponse {
        try await self.resumeInstanceRefresh(.init(autoScalingGroupId: autoScalingGroupId, refreshActivityId: refreshActivityId, resumeMode: resumeMode), region: region, logger: logger, on: eventLoop)
    }
}