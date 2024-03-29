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

extension Pts {
    /// CreateAlertChannel请求参数结构体
    public struct CreateAlertChannelRequest: TCRequest {
        /// Notice ID
        public let noticeId: String

        /// 项目 ID
        public let projectId: String

        /// AMP Consumer ID
        public let ampConsumerId: String?

        public init(noticeId: String, projectId: String, ampConsumerId: String? = nil) {
            self.noticeId = noticeId
            self.projectId = projectId
            self.ampConsumerId = ampConsumerId
        }

        enum CodingKeys: String, CodingKey {
            case noticeId = "NoticeId"
            case projectId = "ProjectId"
            case ampConsumerId = "AMPConsumerId"
        }
    }

    /// CreateAlertChannel返回参数结构体
    public struct CreateAlertChannelResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建告警通知接收组
    @inlinable @discardableResult
    public func createAlertChannel(_ input: CreateAlertChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAlertChannelResponse> {
        self.client.execute(action: "CreateAlertChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建告警通知接收组
    @inlinable @discardableResult
    public func createAlertChannel(_ input: CreateAlertChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlertChannelResponse {
        try await self.client.execute(action: "CreateAlertChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建告警通知接收组
    @inlinable @discardableResult
    public func createAlertChannel(noticeId: String, projectId: String, ampConsumerId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAlertChannelResponse> {
        self.createAlertChannel(.init(noticeId: noticeId, projectId: projectId, ampConsumerId: ampConsumerId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建告警通知接收组
    @inlinable @discardableResult
    public func createAlertChannel(noticeId: String, projectId: String, ampConsumerId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlertChannelResponse {
        try await self.createAlertChannel(.init(noticeId: noticeId, projectId: projectId, ampConsumerId: ampConsumerId), region: region, logger: logger, on: eventLoop)
    }
}
