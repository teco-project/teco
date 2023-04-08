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

import TecoCore

extension Monitor {
    /// CreateAlarmNotice请求参数结构体
    public struct CreateAlarmNoticeRequest: TCRequestModel {
        /// 模块名，这里填“monitor”
        public let module: String

        /// 通知模板名称 60字符以内
        public let name: String

        /// 通知类型 ALARM=未恢复通知 OK=已恢复通知 ALL=都通知
        public let noticeType: String

        /// 通知语言 zh-CN=中文 en-US=英文
        public let noticeLanguage: String

        /// 用户通知 最多5个
        public let userNotices: [UserNotice]?

        /// 回调通知 最多3个
        public let urlNotices: [URLNotice]?

        /// 推送CLS日志服务的操作 最多1个
        public let clsNotices: [CLSNotice]?

        /// 模板绑定的标签
        public let tags: [Tag]?

        public init(module: String, name: String, noticeType: String, noticeLanguage: String, userNotices: [UserNotice]? = nil, urlNotices: [URLNotice]? = nil, clsNotices: [CLSNotice]? = nil, tags: [Tag]? = nil) {
            self.module = module
            self.name = name
            self.noticeType = noticeType
            self.noticeLanguage = noticeLanguage
            self.userNotices = userNotices
            self.urlNotices = urlNotices
            self.clsNotices = clsNotices
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case name = "Name"
            case noticeType = "NoticeType"
            case noticeLanguage = "NoticeLanguage"
            case userNotices = "UserNotices"
            case urlNotices = "URLNotices"
            case clsNotices = "CLSNotices"
            case tags = "Tags"
        }
    }

    /// CreateAlarmNotice返回参数结构体
    public struct CreateAlarmNoticeResponse: TCResponseModel {
        /// 告警通知模板ID
        public let noticeId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case noticeId = "NoticeId"
            case requestId = "RequestId"
        }
    }

    /// 创建通知模板
    @inlinable
    public func createAlarmNotice(_ input: CreateAlarmNoticeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAlarmNoticeResponse> {
        self.client.execute(action: "CreateAlarmNotice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建通知模板
    @inlinable
    public func createAlarmNotice(_ input: CreateAlarmNoticeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlarmNoticeResponse {
        try await self.client.execute(action: "CreateAlarmNotice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建通知模板
    @inlinable
    public func createAlarmNotice(module: String, name: String, noticeType: String, noticeLanguage: String, userNotices: [UserNotice]? = nil, urlNotices: [URLNotice]? = nil, clsNotices: [CLSNotice]? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAlarmNoticeResponse> {
        self.createAlarmNotice(.init(module: module, name: name, noticeType: noticeType, noticeLanguage: noticeLanguage, userNotices: userNotices, urlNotices: urlNotices, clsNotices: clsNotices, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建通知模板
    @inlinable
    public func createAlarmNotice(module: String, name: String, noticeType: String, noticeLanguage: String, userNotices: [UserNotice]? = nil, urlNotices: [URLNotice]? = nil, clsNotices: [CLSNotice]? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlarmNoticeResponse {
        try await self.createAlarmNotice(.init(module: module, name: name, noticeType: noticeType, noticeLanguage: noticeLanguage, userNotices: userNotices, urlNotices: urlNotices, clsNotices: clsNotices, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
