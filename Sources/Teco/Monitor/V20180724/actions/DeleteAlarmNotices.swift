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
    /// DeleteAlarmNotices请求参数结构体
    public struct DeleteAlarmNoticesRequest: TCRequestModel {
        /// 模块名，这里填“monitor”
        public let module: String

        /// 告警通知模板id列表
        public let noticeIds: [String]

        /// 通知模板与策略绑定关系
        public let noticeBindPolicys: [NoticeBindPolicys]?

        public init(module: String, noticeIds: [String], noticeBindPolicys: [NoticeBindPolicys]? = nil) {
            self.module = module
            self.noticeIds = noticeIds
            self.noticeBindPolicys = noticeBindPolicys
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case noticeIds = "NoticeIds"
            case noticeBindPolicys = "NoticeBindPolicys"
        }
    }

    /// DeleteAlarmNotices返回参数结构体
    public struct DeleteAlarmNoticesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除告警通知模板（批量）
    ///
    /// 删除告警通知模板
    @inlinable @discardableResult
    public func deleteAlarmNotices(_ input: DeleteAlarmNoticesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAlarmNoticesResponse> {
        self.client.execute(action: "DeleteAlarmNotices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除告警通知模板（批量）
    ///
    /// 删除告警通知模板
    @inlinable @discardableResult
    public func deleteAlarmNotices(_ input: DeleteAlarmNoticesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlarmNoticesResponse {
        try await self.client.execute(action: "DeleteAlarmNotices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除告警通知模板（批量）
    ///
    /// 删除告警通知模板
    @inlinable @discardableResult
    public func deleteAlarmNotices(module: String, noticeIds: [String], noticeBindPolicys: [NoticeBindPolicys]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAlarmNoticesResponse> {
        self.deleteAlarmNotices(.init(module: module, noticeIds: noticeIds, noticeBindPolicys: noticeBindPolicys), region: region, logger: logger, on: eventLoop)
    }

    /// 删除告警通知模板（批量）
    ///
    /// 删除告警通知模板
    @inlinable @discardableResult
    public func deleteAlarmNotices(module: String, noticeIds: [String], noticeBindPolicys: [NoticeBindPolicys]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlarmNoticesResponse {
        try await self.deleteAlarmNotices(.init(module: module, noticeIds: noticeIds, noticeBindPolicys: noticeBindPolicys), region: region, logger: logger, on: eventLoop)
    }
}
