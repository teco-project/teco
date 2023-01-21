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

extension Gse {
    /// PutTimerScalingPolicy请求参数结构体
    public struct PutTimerScalingPolicyRequest: TCRequestModel {
        /// 定时器策略消息
        public let timerScalingPolicy: TimerScalingPolicy?

        public init(timerScalingPolicy: TimerScalingPolicy? = nil) {
            self.timerScalingPolicy = timerScalingPolicy
        }

        enum CodingKeys: String, CodingKey {
            case timerScalingPolicy = "TimerScalingPolicy"
        }
    }

    /// PutTimerScalingPolicy返回参数结构体
    public struct PutTimerScalingPolicyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建或更新定时器
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（PutTimerScalingPolicy）用于给fleet创建或更新定时器。
    /// 填写字段timer_id，表示更新；不填字段timer_id表示新增。
    @inlinable @discardableResult
    public func putTimerScalingPolicy(_ input: PutTimerScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutTimerScalingPolicyResponse> {
        self.client.execute(action: "PutTimerScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建或更新定时器
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（PutTimerScalingPolicy）用于给fleet创建或更新定时器。
    /// 填写字段timer_id，表示更新；不填字段timer_id表示新增。
    @inlinable @discardableResult
    public func putTimerScalingPolicy(_ input: PutTimerScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutTimerScalingPolicyResponse {
        try await self.client.execute(action: "PutTimerScalingPolicy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建或更新定时器
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（PutTimerScalingPolicy）用于给fleet创建或更新定时器。
    /// 填写字段timer_id，表示更新；不填字段timer_id表示新增。
    @inlinable @discardableResult
    public func putTimerScalingPolicy(timerScalingPolicy: TimerScalingPolicy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PutTimerScalingPolicyResponse> {
        self.putTimerScalingPolicy(PutTimerScalingPolicyRequest(timerScalingPolicy: timerScalingPolicy), region: region, logger: logger, on: eventLoop)
    }

    /// 创建或更新定时器
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（PutTimerScalingPolicy）用于给fleet创建或更新定时器。
    /// 填写字段timer_id，表示更新；不填字段timer_id表示新增。
    @inlinable @discardableResult
    public func putTimerScalingPolicy(timerScalingPolicy: TimerScalingPolicy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutTimerScalingPolicyResponse {
        try await self.putTimerScalingPolicy(PutTimerScalingPolicyRequest(timerScalingPolicy: timerScalingPolicy), region: region, logger: logger, on: eventLoop)
    }
}
