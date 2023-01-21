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

extension Cls {
    /// DeleteAlarmNotice请求参数结构体
    public struct DeleteAlarmNoticeRequest: TCRequestModel {
        /// 通知渠道组ID
        public let alarmNoticeId: String

        public init(alarmNoticeId: String) {
            self.alarmNoticeId = alarmNoticeId
        }

        enum CodingKeys: String, CodingKey {
            case alarmNoticeId = "AlarmNoticeId"
        }
    }

    /// DeleteAlarmNotice返回参数结构体
    public struct DeleteAlarmNoticeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除通知渠道组
    ///
    /// 该接口用于删除通知渠道组
    @inlinable @discardableResult
    public func deleteAlarmNotice(_ input: DeleteAlarmNoticeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAlarmNoticeResponse> {
        self.client.execute(action: "DeleteAlarmNotice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除通知渠道组
    ///
    /// 该接口用于删除通知渠道组
    @inlinable @discardableResult
    public func deleteAlarmNotice(_ input: DeleteAlarmNoticeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlarmNoticeResponse {
        try await self.client.execute(action: "DeleteAlarmNotice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除通知渠道组
    ///
    /// 该接口用于删除通知渠道组
    @inlinable @discardableResult
    public func deleteAlarmNotice(alarmNoticeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteAlarmNoticeResponse> {
        self.deleteAlarmNotice(DeleteAlarmNoticeRequest(alarmNoticeId: alarmNoticeId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除通知渠道组
    ///
    /// 该接口用于删除通知渠道组
    @inlinable @discardableResult
    public func deleteAlarmNotice(alarmNoticeId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAlarmNoticeResponse {
        try await self.deleteAlarmNotice(DeleteAlarmNoticeRequest(alarmNoticeId: alarmNoticeId), region: region, logger: logger, on: eventLoop)
    }
}
