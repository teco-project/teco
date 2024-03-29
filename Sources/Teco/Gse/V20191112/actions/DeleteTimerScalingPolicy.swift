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

extension Gse {
    /// DeleteTimerScalingPolicy请求参数结构体
    public struct DeleteTimerScalingPolicyRequest: TCRequest {
        /// 定时器ID, 进行encode
        public let timerId: String?

        /// 扩缩容配置服务器舰队ID
        public let fleetId: String?

        /// 定时器名称
        public let timerName: String?

        public init(timerId: String? = nil, fleetId: String? = nil, timerName: String? = nil) {
            self.timerId = timerId
            self.fleetId = fleetId
            self.timerName = timerName
        }

        enum CodingKeys: String, CodingKey {
            case timerId = "TimerId"
            case fleetId = "FleetId"
            case timerName = "TimerName"
        }
    }

    /// DeleteTimerScalingPolicy返回参数结构体
    public struct DeleteTimerScalingPolicyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除定时器
    ///
    /// 本接口（DeleteTimerScalingPolicy）用于删除fleet下的定时器。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteTimerScalingPolicy(_ input: DeleteTimerScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTimerScalingPolicyResponse> {
        fatalError("'DeleteTimerScalingPolicy' is no longer available.")
    }

    /// 删除定时器
    ///
    /// 本接口（DeleteTimerScalingPolicy）用于删除fleet下的定时器。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteTimerScalingPolicy(_ input: DeleteTimerScalingPolicyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTimerScalingPolicyResponse {
        fatalError("'DeleteTimerScalingPolicy' is no longer available.")
    }

    /// 删除定时器
    ///
    /// 本接口（DeleteTimerScalingPolicy）用于删除fleet下的定时器。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteTimerScalingPolicy(timerId: String? = nil, fleetId: String? = nil, timerName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTimerScalingPolicyResponse> {
        fatalError("'DeleteTimerScalingPolicy' is no longer available.")
    }

    /// 删除定时器
    ///
    /// 本接口（DeleteTimerScalingPolicy）用于删除fleet下的定时器。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteTimerScalingPolicy(timerId: String? = nil, fleetId: String? = nil, timerName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTimerScalingPolicyResponse {
        fatalError("'DeleteTimerScalingPolicy' is no longer available.")
    }
}
