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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Cls {
    /// CreateAlarmNotice请求参数结构体
    public struct CreateAlarmNoticeRequest: TCRequestModel {
        /// 通知渠道组名称。
        public let name: String

        /// 通知类型。可选值：
        /// <li> Trigger - 告警触发
        /// <li> Recovery - 告警恢复
        /// <li> All - 告警触发和告警恢复
        public let type: String

        /// 通知接收对象。
        public let noticeReceivers: [NoticeReceiver]?

        /// 接口回调信息（包括企业微信）。
        public let webCallbacks: [WebCallback]?

        public init(name: String, type: String, noticeReceivers: [NoticeReceiver]? = nil, webCallbacks: [WebCallback]? = nil) {
            self.name = name
            self.type = type
            self.noticeReceivers = noticeReceivers
            self.webCallbacks = webCallbacks
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case type = "Type"
            case noticeReceivers = "NoticeReceivers"
            case webCallbacks = "WebCallbacks"
        }
    }

    /// CreateAlarmNotice返回参数结构体
    public struct CreateAlarmNoticeResponse: TCResponseModel {
        /// 告警模板ID
        public let alarmNoticeId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alarmNoticeId = "AlarmNoticeId"
            case requestId = "RequestId"
        }
    }

    /// 创建通知渠道组
    ///
    /// 该接口用于创建通知渠道组。
    @inlinable
    public func createAlarmNotice(_ input: CreateAlarmNoticeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAlarmNoticeResponse> {
        self.client.execute(action: "CreateAlarmNotice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建通知渠道组
    ///
    /// 该接口用于创建通知渠道组。
    @inlinable
    public func createAlarmNotice(_ input: CreateAlarmNoticeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlarmNoticeResponse {
        try await self.client.execute(action: "CreateAlarmNotice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建通知渠道组
    ///
    /// 该接口用于创建通知渠道组。
    @inlinable
    public func createAlarmNotice(name: String, type: String, noticeReceivers: [NoticeReceiver]? = nil, webCallbacks: [WebCallback]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAlarmNoticeResponse> {
        self.createAlarmNotice(.init(name: name, type: type, noticeReceivers: noticeReceivers, webCallbacks: webCallbacks), region: region, logger: logger, on: eventLoop)
    }

    /// 创建通知渠道组
    ///
    /// 该接口用于创建通知渠道组。
    @inlinable
    public func createAlarmNotice(name: String, type: String, noticeReceivers: [NoticeReceiver]? = nil, webCallbacks: [WebCallback]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlarmNoticeResponse {
        try await self.createAlarmNotice(.init(name: name, type: type, noticeReceivers: noticeReceivers, webCallbacks: webCallbacks), region: region, logger: logger, on: eventLoop)
    }
}
