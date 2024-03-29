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

extension Tcss {
    /// ModifyVirusAutoIsolateSetting请求参数结构体
    public struct ModifyVirusAutoIsolateSettingRequest: TCRequest {
        /// 自动隔离开关(true:开 false:关)
        public let autoIsolateSwitch: Bool

        /// 是否中断隔离文件关联的进程(true:是 false:否)
        public let isKillProgress: Bool

        public init(autoIsolateSwitch: Bool, isKillProgress: Bool) {
            self.autoIsolateSwitch = autoIsolateSwitch
            self.isKillProgress = isKillProgress
        }

        enum CodingKeys: String, CodingKey {
            case autoIsolateSwitch = "AutoIsolateSwitch"
            case isKillProgress = "IsKillProgress"
        }
    }

    /// ModifyVirusAutoIsolateSetting返回参数结构体
    public struct ModifyVirusAutoIsolateSettingResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改木马自动隔离设置
    @inlinable @discardableResult
    public func modifyVirusAutoIsolateSetting(_ input: ModifyVirusAutoIsolateSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVirusAutoIsolateSettingResponse> {
        self.client.execute(action: "ModifyVirusAutoIsolateSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改木马自动隔离设置
    @inlinable @discardableResult
    public func modifyVirusAutoIsolateSetting(_ input: ModifyVirusAutoIsolateSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVirusAutoIsolateSettingResponse {
        try await self.client.execute(action: "ModifyVirusAutoIsolateSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改木马自动隔离设置
    @inlinable @discardableResult
    public func modifyVirusAutoIsolateSetting(autoIsolateSwitch: Bool, isKillProgress: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVirusAutoIsolateSettingResponse> {
        self.modifyVirusAutoIsolateSetting(.init(autoIsolateSwitch: autoIsolateSwitch, isKillProgress: isKillProgress), region: region, logger: logger, on: eventLoop)
    }

    /// 修改木马自动隔离设置
    @inlinable @discardableResult
    public func modifyVirusAutoIsolateSetting(autoIsolateSwitch: Bool, isKillProgress: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVirusAutoIsolateSettingResponse {
        try await self.modifyVirusAutoIsolateSetting(.init(autoIsolateSwitch: autoIsolateSwitch, isKillProgress: isKillProgress), region: region, logger: logger, on: eventLoop)
    }
}
