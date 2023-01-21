//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Pts {
    /// DeleteAlertChannel请求参数结构体
    public struct DeleteAlertChannelRequest: TCRequestModel {
        /// 项目 ID
        public let projectId: String

        /// Notice ID
        public let noticeId: String

        public init(projectId: String, noticeId: String) {
            self.projectId = projectId
            self.noticeId = noticeId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case noticeId = "NoticeId"
        }
    }

    /// DeleteAlertChannel返回参数结构体
    public struct DeleteAlertChannelResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除告警通知接收组
    @inlinable @discardableResult
    public func deleteAlertChannel(_ input: DeleteAlertChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAlertChannelResponse> {
        self.client.execute(action: "DeleteAlertChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除告警通知接收组
    @inlinable @discardableResult
    public func deleteAlertChannel(_ input: DeleteAlertChannelRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlertChannelResponse {
        try await self.client.execute(action: "DeleteAlertChannel", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除告警通知接收组
    @inlinable @discardableResult
    public func deleteAlertChannel(projectId: String, noticeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAlertChannelResponse> {
        self.deleteAlertChannel(DeleteAlertChannelRequest(projectId: projectId, noticeId: noticeId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除告警通知接收组
    @inlinable @discardableResult
    public func deleteAlertChannel(projectId: String, noticeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlertChannelResponse {
        try await self.deleteAlertChannel(DeleteAlertChannelRequest(projectId: projectId, noticeId: noticeId), region: region, logger: logger, on: eventLoop)
    }
}
