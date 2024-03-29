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
    /// DescribeVirusAutoIsolateSetting请求参数结构体
    public struct DescribeVirusAutoIsolateSettingRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeVirusAutoIsolateSetting返回参数结构体
    public struct DescribeVirusAutoIsolateSettingResponse: TCResponse {
        /// 自动隔离开关(true:开 false:关)
        public let autoIsolateSwitch: Bool

        /// 是否中断隔离文件关联的进程(true:是 false:否)
        public let isKillProgress: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case autoIsolateSwitch = "AutoIsolateSwitch"
            case isKillProgress = "IsKillProgress"
            case requestId = "RequestId"
        }
    }

    /// 查询木马自动隔离设置
    @inlinable
    public func describeVirusAutoIsolateSetting(_ input: DescribeVirusAutoIsolateSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirusAutoIsolateSettingResponse> {
        self.client.execute(action: "DescribeVirusAutoIsolateSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询木马自动隔离设置
    @inlinable
    public func describeVirusAutoIsolateSetting(_ input: DescribeVirusAutoIsolateSettingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusAutoIsolateSettingResponse {
        try await self.client.execute(action: "DescribeVirusAutoIsolateSetting", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询木马自动隔离设置
    @inlinable
    public func describeVirusAutoIsolateSetting(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVirusAutoIsolateSettingResponse> {
        self.describeVirusAutoIsolateSetting(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询木马自动隔离设置
    @inlinable
    public func describeVirusAutoIsolateSetting(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVirusAutoIsolateSettingResponse {
        try await self.describeVirusAutoIsolateSetting(.init(), region: region, logger: logger, on: eventLoop)
    }
}
