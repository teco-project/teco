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

extension Bma {
    /// ModifyCRMonitor请求参数结构体
    public struct ModifyCRMonitorRequest: TCRequestModel {
        /// 作品ID
        public let workId: Int64

        /// 监测状态：1-开启监测 2-关闭监测
        public let monitorStatus: String

        /// 监测截止时间
        public let monitorEnd: String?

        public init(workId: Int64, monitorStatus: String, monitorEnd: String? = nil) {
            self.workId = workId
            self.monitorStatus = monitorStatus
            self.monitorEnd = monitorEnd
        }

        enum CodingKeys: String, CodingKey {
            case workId = "WorkId"
            case monitorStatus = "MonitorStatus"
            case monitorEnd = "MonitorEnd"
        }
    }

    /// ModifyCRMonitor返回参数结构体
    public struct ModifyCRMonitorResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 开启或关闭监测
    ///
    /// 开启/关闭监测
    @inlinable @discardableResult
    public func modifyCRMonitor(_ input: ModifyCRMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCRMonitorResponse> {
        self.client.execute(action: "ModifyCRMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开启或关闭监测
    ///
    /// 开启/关闭监测
    @inlinable @discardableResult
    public func modifyCRMonitor(_ input: ModifyCRMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCRMonitorResponse {
        try await self.client.execute(action: "ModifyCRMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开启或关闭监测
    ///
    /// 开启/关闭监测
    @inlinable @discardableResult
    public func modifyCRMonitor(workId: Int64, monitorStatus: String, monitorEnd: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCRMonitorResponse> {
        self.modifyCRMonitor(.init(workId: workId, monitorStatus: monitorStatus, monitorEnd: monitorEnd), region: region, logger: logger, on: eventLoop)
    }

    /// 开启或关闭监测
    ///
    /// 开启/关闭监测
    @inlinable @discardableResult
    public func modifyCRMonitor(workId: Int64, monitorStatus: String, monitorEnd: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCRMonitorResponse {
        try await self.modifyCRMonitor(.init(workId: workId, monitorStatus: monitorStatus, monitorEnd: monitorEnd), region: region, logger: logger, on: eventLoop)
    }
}
