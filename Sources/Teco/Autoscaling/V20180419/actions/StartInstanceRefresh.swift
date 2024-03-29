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
    /// StartInstanceRefresh请求参数结构体
    public struct StartInstanceRefreshRequest: TCRequest {
        /// 伸缩组ID。
        public let autoScalingGroupId: String

        /// 刷新设置。
        public let refreshSettings: RefreshSettings

        /// 刷新模式，目前仅支持滚动更新，默认值为 ROLLING_UPDATE_RESET。
        public let refreshMode: String?

        public init(autoScalingGroupId: String, refreshSettings: RefreshSettings, refreshMode: String? = nil) {
            self.autoScalingGroupId = autoScalingGroupId
            self.refreshSettings = refreshSettings
            self.refreshMode = refreshMode
        }

        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case refreshSettings = "RefreshSettings"
            case refreshMode = "RefreshMode"
        }
    }

    /// StartInstanceRefresh返回参数结构体
    public struct StartInstanceRefreshResponse: TCResponse {
        /// 刷新活动 ID。
        public let refreshActivityId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case refreshActivityId = "RefreshActivityId"
            case requestId = "RequestId"
        }
    }

    /// 启动实例刷新
    ///
    /// 根据启动配置中参数，刷新伸缩组内运行中状态 CVM 实例，返回实例刷新活动的 RefreshActivityId。
    /// * 对于重装实例的刷新方式（目前仅支持重装），重装时仅会从启动配置中获取 ImageId、UserData、EnhancedService、 HostName、LoginSettings 参数进行刷新，实例的其他参数不会刷新
    /// * 实例刷新期间（包括暂停状态），伸缩组会被停用。不建议刷新期间修改关联启动配置，否则会影响刷新参数，造成实例配置不一致
    /// * 滚动更新模式会分成多批次进行刷新实例，单批次中若存在刷新失败实例，活动会进入失败暂停状态
    /// * 若待刷新实例被移出或销毁，会被标记为 NOT_FOUND 状态，不阻塞实例刷新活动
    /// * 运行中状态实例与最新启动配置参数一致，实例也会再次刷新
    @inlinable
    public func startInstanceRefresh(_ input: StartInstanceRefreshRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartInstanceRefreshResponse> {
        self.client.execute(action: "StartInstanceRefresh", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动实例刷新
    ///
    /// 根据启动配置中参数，刷新伸缩组内运行中状态 CVM 实例，返回实例刷新活动的 RefreshActivityId。
    /// * 对于重装实例的刷新方式（目前仅支持重装），重装时仅会从启动配置中获取 ImageId、UserData、EnhancedService、 HostName、LoginSettings 参数进行刷新，实例的其他参数不会刷新
    /// * 实例刷新期间（包括暂停状态），伸缩组会被停用。不建议刷新期间修改关联启动配置，否则会影响刷新参数，造成实例配置不一致
    /// * 滚动更新模式会分成多批次进行刷新实例，单批次中若存在刷新失败实例，活动会进入失败暂停状态
    /// * 若待刷新实例被移出或销毁，会被标记为 NOT_FOUND 状态，不阻塞实例刷新活动
    /// * 运行中状态实例与最新启动配置参数一致，实例也会再次刷新
    @inlinable
    public func startInstanceRefresh(_ input: StartInstanceRefreshRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartInstanceRefreshResponse {
        try await self.client.execute(action: "StartInstanceRefresh", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动实例刷新
    ///
    /// 根据启动配置中参数，刷新伸缩组内运行中状态 CVM 实例，返回实例刷新活动的 RefreshActivityId。
    /// * 对于重装实例的刷新方式（目前仅支持重装），重装时仅会从启动配置中获取 ImageId、UserData、EnhancedService、 HostName、LoginSettings 参数进行刷新，实例的其他参数不会刷新
    /// * 实例刷新期间（包括暂停状态），伸缩组会被停用。不建议刷新期间修改关联启动配置，否则会影响刷新参数，造成实例配置不一致
    /// * 滚动更新模式会分成多批次进行刷新实例，单批次中若存在刷新失败实例，活动会进入失败暂停状态
    /// * 若待刷新实例被移出或销毁，会被标记为 NOT_FOUND 状态，不阻塞实例刷新活动
    /// * 运行中状态实例与最新启动配置参数一致，实例也会再次刷新
    @inlinable
    public func startInstanceRefresh(autoScalingGroupId: String, refreshSettings: RefreshSettings, refreshMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartInstanceRefreshResponse> {
        self.startInstanceRefresh(.init(autoScalingGroupId: autoScalingGroupId, refreshSettings: refreshSettings, refreshMode: refreshMode), region: region, logger: logger, on: eventLoop)
    }

    /// 启动实例刷新
    ///
    /// 根据启动配置中参数，刷新伸缩组内运行中状态 CVM 实例，返回实例刷新活动的 RefreshActivityId。
    /// * 对于重装实例的刷新方式（目前仅支持重装），重装时仅会从启动配置中获取 ImageId、UserData、EnhancedService、 HostName、LoginSettings 参数进行刷新，实例的其他参数不会刷新
    /// * 实例刷新期间（包括暂停状态），伸缩组会被停用。不建议刷新期间修改关联启动配置，否则会影响刷新参数，造成实例配置不一致
    /// * 滚动更新模式会分成多批次进行刷新实例，单批次中若存在刷新失败实例，活动会进入失败暂停状态
    /// * 若待刷新实例被移出或销毁，会被标记为 NOT_FOUND 状态，不阻塞实例刷新活动
    /// * 运行中状态实例与最新启动配置参数一致，实例也会再次刷新
    @inlinable
    public func startInstanceRefresh(autoScalingGroupId: String, refreshSettings: RefreshSettings, refreshMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartInstanceRefreshResponse {
        try await self.startInstanceRefresh(.init(autoScalingGroupId: autoScalingGroupId, refreshSettings: refreshSettings, refreshMode: refreshMode), region: region, logger: logger, on: eventLoop)
    }
}
