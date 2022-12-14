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

extension Live {
    /// DeleteLiveRecord请求参数结构体
    public struct DeleteLiveRecordRequest: TCRequestModel {
        /// 流名称。
        public let streamName: String

        /// 任务ID，由CreateLiveRecord接口返回。
        public let taskId: Int64

        public init(streamName: String, taskId: Int64) {
            self.streamName = streamName
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case streamName = "StreamName"
            case taskId = "TaskId"
        }
    }

    /// DeleteLiveRecord返回参数结构体
    public struct DeleteLiveRecordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除录制任务(已废弃,请使用新接口)
    ///
    /// 注：DeleteLiveRecord 接口仅用于删除录制任务记录，不具备停止录制的功能，也不能删除正在进行中的录制。如果需要停止录制任务，请使用终止录制[StopLiveRecord](/document/product/267/30146) 接口。
    @inlinable
    public func deleteLiveRecord(_ input: DeleteLiveRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLiveRecordResponse > {
        self.client.execute(action: "DeleteLiveRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除录制任务(已废弃,请使用新接口)
    ///
    /// 注：DeleteLiveRecord 接口仅用于删除录制任务记录，不具备停止录制的功能，也不能删除正在进行中的录制。如果需要停止录制任务，请使用终止录制[StopLiveRecord](/document/product/267/30146) 接口。
    @inlinable
    public func deleteLiveRecord(_ input: DeleteLiveRecordRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveRecordResponse {
        try await self.client.execute(action: "DeleteLiveRecord", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除录制任务(已废弃,请使用新接口)
    ///
    /// 注：DeleteLiveRecord 接口仅用于删除录制任务记录，不具备停止录制的功能，也不能删除正在进行中的录制。如果需要停止录制任务，请使用终止录制[StopLiveRecord](/document/product/267/30146) 接口。
    @inlinable
    public func deleteLiveRecord(streamName: String, taskId: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteLiveRecordResponse > {
        self.deleteLiveRecord(DeleteLiveRecordRequest(streamName: streamName, taskId: taskId), logger: logger, on: eventLoop)
    }

    /// 删除录制任务(已废弃,请使用新接口)
    ///
    /// 注：DeleteLiveRecord 接口仅用于删除录制任务记录，不具备停止录制的功能，也不能删除正在进行中的录制。如果需要停止录制任务，请使用终止录制[StopLiveRecord](/document/product/267/30146) 接口。
    @inlinable
    public func deleteLiveRecord(streamName: String, taskId: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLiveRecordResponse {
        try await self.deleteLiveRecord(DeleteLiveRecordRequest(streamName: streamName, taskId: taskId), logger: logger, on: eventLoop)
    }
}
