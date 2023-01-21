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

extension Live {
    /// StopLiveRecord请求参数结构体
    public struct StopLiveRecordRequest: TCRequestModel {
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

    /// StopLiveRecord返回参数结构体
    public struct StopLiveRecordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 终止录制任务(已废弃,请使用新接口)
    ///
    /// 说明：录制后的文件存放于点播平台。用户如需使用录制功能，需首先自行开通点播账号并确保账号可用。录制文件存放后，相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，请参考对应文档。
    @inlinable @discardableResult
    public func stopLiveRecord(_ input: StopLiveRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopLiveRecordResponse> {
        self.client.execute(action: "StopLiveRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终止录制任务(已废弃,请使用新接口)
    ///
    /// 说明：录制后的文件存放于点播平台。用户如需使用录制功能，需首先自行开通点播账号并确保账号可用。录制文件存放后，相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，请参考对应文档。
    @inlinable @discardableResult
    public func stopLiveRecord(_ input: StopLiveRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopLiveRecordResponse {
        try await self.client.execute(action: "StopLiveRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终止录制任务(已废弃,请使用新接口)
    ///
    /// 说明：录制后的文件存放于点播平台。用户如需使用录制功能，需首先自行开通点播账号并确保账号可用。录制文件存放后，相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，请参考对应文档。
    @inlinable @discardableResult
    public func stopLiveRecord(streamName: String, taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopLiveRecordResponse> {
        self.stopLiveRecord(StopLiveRecordRequest(streamName: streamName, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 终止录制任务(已废弃,请使用新接口)
    ///
    /// 说明：录制后的文件存放于点播平台。用户如需使用录制功能，需首先自行开通点播账号并确保账号可用。录制文件存放后，相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，请参考对应文档。
    @inlinable @discardableResult
    public func stopLiveRecord(streamName: String, taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopLiveRecordResponse {
        try await self.stopLiveRecord(StopLiveRecordRequest(streamName: streamName, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
