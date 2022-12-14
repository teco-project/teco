//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Monitor {
    /// ModifyAlarmNotice请求参数结构体
    public struct ModifyAlarmNoticeRequest: TCRequestModel {
        /// 模块名，这里填“monitor”
        public let module: String

        /// 告警通知规则名称 60字符以内
        public let name: String

        /// 通知类型 ALARM=未恢复通知 OK=已恢复通知 ALL=都通知
        public let noticeType: String

        /// 通知语言 zh-CN=中文 en-US=英文
        public let noticeLanguage: String

        /// 告警通知模板 ID
        public let noticeId: String

        /// 用户通知 最多5个
        public let userNotices: [UserNotice]?

        /// 回调通知 最多3个
        public let urlNotices: [URLNotice]?

        /// 告警通知推送到CLS服务 最多1个
        public let clsNotices: [CLSNotice]?

        public init(module: String, name: String, noticeType: String, noticeLanguage: String, noticeId: String, userNotices: [UserNotice]? = nil, urlNotices: [URLNotice]? = nil, clsNotices: [CLSNotice]? = nil) {
            self.module = module
            self.name = name
            self.noticeType = noticeType
            self.noticeLanguage = noticeLanguage
            self.noticeId = noticeId
            self.userNotices = userNotices
            self.urlNotices = urlNotices
            self.clsNotices = clsNotices
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case name = "Name"
            case noticeType = "NoticeType"
            case noticeLanguage = "NoticeLanguage"
            case noticeId = "NoticeId"
            case userNotices = "UserNotices"
            case urlNotices = "URLNotices"
            case clsNotices = "CLSNotices"
        }
    }

    /// ModifyAlarmNotice返回参数结构体
    public struct ModifyAlarmNoticeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改通知模板
    ///
    /// 云监控告警编辑告警通知模板
    @inlinable
    public func modifyAlarmNotice(_ input: ModifyAlarmNoticeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAlarmNoticeResponse > {
        self.client.execute(action: "ModifyAlarmNotice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改通知模板
    ///
    /// 云监控告警编辑告警通知模板
    @inlinable
    public func modifyAlarmNotice(_ input: ModifyAlarmNoticeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmNoticeResponse {
        try await self.client.execute(action: "ModifyAlarmNotice", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改通知模板
    ///
    /// 云监控告警编辑告警通知模板
    @inlinable
    public func modifyAlarmNotice(module: String, name: String, noticeType: String, noticeLanguage: String, noticeId: String, userNotices: [UserNotice]? = nil, urlNotices: [URLNotice]? = nil, clsNotices: [CLSNotice]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAlarmNoticeResponse > {
        self.modifyAlarmNotice(ModifyAlarmNoticeRequest(module: module, name: name, noticeType: noticeType, noticeLanguage: noticeLanguage, noticeId: noticeId, userNotices: userNotices, urlNotices: urlNotices, clsNotices: clsNotices), logger: logger, on: eventLoop)
    }

    /// 修改通知模板
    ///
    /// 云监控告警编辑告警通知模板
    @inlinable
    public func modifyAlarmNotice(module: String, name: String, noticeType: String, noticeLanguage: String, noticeId: String, userNotices: [UserNotice]? = nil, urlNotices: [URLNotice]? = nil, clsNotices: [CLSNotice]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAlarmNoticeResponse {
        try await self.modifyAlarmNotice(ModifyAlarmNoticeRequest(module: module, name: name, noticeType: noticeType, noticeLanguage: noticeLanguage, noticeId: noticeId, userNotices: userNotices, urlNotices: urlNotices, clsNotices: clsNotices), logger: logger, on: eventLoop)
    }
}
