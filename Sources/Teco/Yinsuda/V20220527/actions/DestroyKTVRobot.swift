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

extension Yinsuda {
    /// DestroyKTVRobot请求参数结构体
    public struct DestroyKTVRobotRequest: TCRequest {
        /// 应用名称。
        public let appName: String

        /// 用户标识。
        public let userId: String

        /// 机器人Id。
        public let robotId: String

        public init(appName: String, userId: String, robotId: String) {
            self.appName = appName
            self.userId = userId
            self.robotId = robotId
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case userId = "UserId"
            case robotId = "RobotId"
        }
    }

    /// DestroyKTVRobot返回参数结构体
    public struct DestroyKTVRobotResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 销毁机器人
    ///
    /// 销毁机器人，机器人退出 RTC 房间。
    @inlinable @discardableResult
    public func destroyKTVRobot(_ input: DestroyKTVRobotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyKTVRobotResponse> {
        self.client.execute(action: "DestroyKTVRobot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁机器人
    ///
    /// 销毁机器人，机器人退出 RTC 房间。
    @inlinable @discardableResult
    public func destroyKTVRobot(_ input: DestroyKTVRobotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyKTVRobotResponse {
        try await self.client.execute(action: "DestroyKTVRobot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁机器人
    ///
    /// 销毁机器人，机器人退出 RTC 房间。
    @inlinable @discardableResult
    public func destroyKTVRobot(appName: String, userId: String, robotId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyKTVRobotResponse> {
        self.destroyKTVRobot(.init(appName: appName, userId: userId, robotId: robotId), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁机器人
    ///
    /// 销毁机器人，机器人退出 RTC 房间。
    @inlinable @discardableResult
    public func destroyKTVRobot(appName: String, userId: String, robotId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyKTVRobotResponse {
        try await self.destroyKTVRobot(.init(appName: appName, userId: userId, robotId: robotId), region: region, logger: logger, on: eventLoop)
    }
}
