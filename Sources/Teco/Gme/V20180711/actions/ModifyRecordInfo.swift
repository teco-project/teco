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

extension Gme {
    /// ModifyRecordInfo请求参数结构体
    public struct ModifyRecordInfoRequest: TCRequestModel {
        /// 进行中的任务taskid（StartRecord接口返回）。
        public let taskId: UInt64

        /// 录制类型：1代表单流 2代表混流 3代表单流和混流。
        public let recordMode: UInt64

        /// 应用ID。
        public let bizId: UInt64

        /// 指定订阅流白名单或者黑名单。
        public let subscribeRecordUserIds: SubscribeRecordUserIds?

        public init(taskId: UInt64, recordMode: UInt64, bizId: UInt64, subscribeRecordUserIds: SubscribeRecordUserIds? = nil) {
            self.taskId = taskId
            self.recordMode = recordMode
            self.bizId = bizId
            self.subscribeRecordUserIds = subscribeRecordUserIds
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case recordMode = "RecordMode"
            case bizId = "BizId"
            case subscribeRecordUserIds = "SubscribeRecordUserIds"
        }
    }

    /// ModifyRecordInfo返回参数结构体
    public struct ModifyRecordInfoResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新录制信息
    ///
    /// 修改录制配置信息
    @inlinable @discardableResult
    public func modifyRecordInfo(_ input: ModifyRecordInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordInfoResponse> {
        self.client.execute(action: "ModifyRecordInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新录制信息
    ///
    /// 修改录制配置信息
    @inlinable @discardableResult
    public func modifyRecordInfo(_ input: ModifyRecordInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordInfoResponse {
        try await self.client.execute(action: "ModifyRecordInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新录制信息
    ///
    /// 修改录制配置信息
    @inlinable @discardableResult
    public func modifyRecordInfo(taskId: UInt64, recordMode: UInt64, bizId: UInt64, subscribeRecordUserIds: SubscribeRecordUserIds? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyRecordInfoResponse> {
        self.modifyRecordInfo(.init(taskId: taskId, recordMode: recordMode, bizId: bizId, subscribeRecordUserIds: subscribeRecordUserIds), region: region, logger: logger, on: eventLoop)
    }

    /// 更新录制信息
    ///
    /// 修改录制配置信息
    @inlinable @discardableResult
    public func modifyRecordInfo(taskId: UInt64, recordMode: UInt64, bizId: UInt64, subscribeRecordUserIds: SubscribeRecordUserIds? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRecordInfoResponse {
        try await self.modifyRecordInfo(.init(taskId: taskId, recordMode: recordMode, bizId: bizId, subscribeRecordUserIds: subscribeRecordUserIds), region: region, logger: logger, on: eventLoop)
    }
}