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

extension Solar {
    /// SendWxTouchTask请求参数结构体
    public struct SendWxTouchTaskRequest: TCRequestModel {
        /// 客户分组ID
        public let groupId: String

        /// 去除今日已发送的客户
        public let distinctFlag: Bool

        /// 是否立马发送
        public let isSendNow: Bool

        /// 发送时间，一般为0
        public let sendDate: Int64

        /// 任务名称
        public let taskName: String

        /// 微信触达类型，text, news, smallapp, tmplmsg
        public let wxTouchType: String

        /// 标题
        public let title: String?

        /// 文本内容
        public let content: String?

        /// 图文素材ID
        public let newsId: String?

        /// 小程序卡片ID
        public let smallProgramId: String?

        /// 模板消息ID
        public let templateId: String?

        /// 微信公众号appId
        public let wxAppId: String?

        public init(groupId: String, distinctFlag: Bool, isSendNow: Bool, sendDate: Int64, taskName: String, wxTouchType: String, title: String? = nil, content: String? = nil, newsId: String? = nil, smallProgramId: String? = nil, templateId: String? = nil, wxAppId: String? = nil) {
            self.groupId = groupId
            self.distinctFlag = distinctFlag
            self.isSendNow = isSendNow
            self.sendDate = sendDate
            self.taskName = taskName
            self.wxTouchType = wxTouchType
            self.title = title
            self.content = content
            self.newsId = newsId
            self.smallProgramId = smallProgramId
            self.templateId = templateId
            self.wxAppId = wxAppId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case distinctFlag = "DistinctFlag"
            case isSendNow = "IsSendNow"
            case sendDate = "SendDate"
            case taskName = "TaskName"
            case wxTouchType = "WxTouchType"
            case title = "Title"
            case content = "Content"
            case newsId = "NewsId"
            case smallProgramId = "SmallProgramId"
            case templateId = "TemplateId"
            case wxAppId = "WxAppId"
        }
    }

    /// SendWxTouchTask返回参数结构体
    public struct SendWxTouchTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 发送微信触达任务
    ///
    /// 发送企业微信触达任务
    @inlinable @discardableResult
    public func sendWxTouchTask(_ input: SendWxTouchTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendWxTouchTaskResponse> {
        self.client.execute(action: "SendWxTouchTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送微信触达任务
    ///
    /// 发送企业微信触达任务
    @inlinable @discardableResult
    public func sendWxTouchTask(_ input: SendWxTouchTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendWxTouchTaskResponse {
        try await self.client.execute(action: "SendWxTouchTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发送微信触达任务
    ///
    /// 发送企业微信触达任务
    @inlinable @discardableResult
    public func sendWxTouchTask(groupId: String, distinctFlag: Bool, isSendNow: Bool, sendDate: Int64, taskName: String, wxTouchType: String, title: String? = nil, content: String? = nil, newsId: String? = nil, smallProgramId: String? = nil, templateId: String? = nil, wxAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendWxTouchTaskResponse> {
        self.sendWxTouchTask(.init(groupId: groupId, distinctFlag: distinctFlag, isSendNow: isSendNow, sendDate: sendDate, taskName: taskName, wxTouchType: wxTouchType, title: title, content: content, newsId: newsId, smallProgramId: smallProgramId, templateId: templateId, wxAppId: wxAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 发送微信触达任务
    ///
    /// 发送企业微信触达任务
    @inlinable @discardableResult
    public func sendWxTouchTask(groupId: String, distinctFlag: Bool, isSendNow: Bool, sendDate: Int64, taskName: String, wxTouchType: String, title: String? = nil, content: String? = nil, newsId: String? = nil, smallProgramId: String? = nil, templateId: String? = nil, wxAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendWxTouchTaskResponse {
        try await self.sendWxTouchTask(.init(groupId: groupId, distinctFlag: distinctFlag, isSendNow: isSendNow, sendDate: sendDate, taskName: taskName, wxTouchType: wxTouchType, title: title, content: content, newsId: newsId, smallProgramId: smallProgramId, templateId: templateId, wxAppId: wxAppId), region: region, logger: logger, on: eventLoop)
    }
}
