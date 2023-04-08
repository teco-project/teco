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

extension Ame {
    /// DestroyKTVRobot请求参数结构体
    public struct DestroyKTVRobotRequest: TCRequestModel {
        /// 机器人Id。
        public let robotId: String

        public init(robotId: String) {
            self.robotId = robotId
        }

        enum CodingKeys: String, CodingKey {
            case robotId = "RobotId"
        }
    }

    /// DestroyKTVRobot返回参数结构体
    public struct DestroyKTVRobotResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 销毁直播互动机器人
    ///
    /// 销毁机器人，机器人退出 RTC 房间。
    @inlinable @discardableResult
    public func destroyKTVRobot(_ input: DestroyKTVRobotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyKTVRobotResponse> {
        self.client.execute(action: "DestroyKTVRobot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁直播互动机器人
    ///
    /// 销毁机器人，机器人退出 RTC 房间。
    @inlinable @discardableResult
    public func destroyKTVRobot(_ input: DestroyKTVRobotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyKTVRobotResponse {
        try await self.client.execute(action: "DestroyKTVRobot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁直播互动机器人
    ///
    /// 销毁机器人，机器人退出 RTC 房间。
    @inlinable @discardableResult
    public func destroyKTVRobot(robotId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DestroyKTVRobotResponse> {
        self.destroyKTVRobot(.init(robotId: robotId), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁直播互动机器人
    ///
    /// 销毁机器人，机器人退出 RTC 房间。
    @inlinable @discardableResult
    public func destroyKTVRobot(robotId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyKTVRobotResponse {
        try await self.destroyKTVRobot(.init(robotId: robotId), region: region, logger: logger, on: eventLoop)
    }
}
