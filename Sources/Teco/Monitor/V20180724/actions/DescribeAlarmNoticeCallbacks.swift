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

extension Monitor {
    /// DescribeAlarmNoticeCallbacks请求参数结构体
    public struct DescribeAlarmNoticeCallbacksRequest: TCRequest {
        /// 模块名，这里填“monitor”
        public let module: String

        public init(module: String) {
            self.module = module
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
        }
    }

    /// DescribeAlarmNoticeCallbacks返回参数结构体
    public struct DescribeAlarmNoticeCallbacksResponse: TCResponse {
        /// 告警回调通知
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let urlNotices: [URLNotice]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case urlNotices = "URLNotices"
            case requestId = "RequestId"
        }
    }

    /// 查询账号下所有回调URL列表
    ///
    /// 获取告警通知模板所有回调URL
    @inlinable
    public func describeAlarmNoticeCallbacks(_ input: DescribeAlarmNoticeCallbacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmNoticeCallbacksResponse> {
        self.client.execute(action: "DescribeAlarmNoticeCallbacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询账号下所有回调URL列表
    ///
    /// 获取告警通知模板所有回调URL
    @inlinable
    public func describeAlarmNoticeCallbacks(_ input: DescribeAlarmNoticeCallbacksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmNoticeCallbacksResponse {
        try await self.client.execute(action: "DescribeAlarmNoticeCallbacks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询账号下所有回调URL列表
    ///
    /// 获取告警通知模板所有回调URL
    @inlinable
    public func describeAlarmNoticeCallbacks(module: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmNoticeCallbacksResponse> {
        self.describeAlarmNoticeCallbacks(.init(module: module), region: region, logger: logger, on: eventLoop)
    }

    /// 查询账号下所有回调URL列表
    ///
    /// 获取告警通知模板所有回调URL
    @inlinable
    public func describeAlarmNoticeCallbacks(module: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmNoticeCallbacksResponse {
        try await self.describeAlarmNoticeCallbacks(.init(module: module), region: region, logger: logger, on: eventLoop)
    }
}
