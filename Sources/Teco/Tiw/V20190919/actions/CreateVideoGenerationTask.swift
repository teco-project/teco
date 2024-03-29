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

extension Tiw {
    /// CreateVideoGenerationTask请求参数结构体
    public struct CreateVideoGenerationTaskRequest: TCRequest {
        /// 录制任务的TaskId
        public let onlineRecordTaskId: String

        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 视频生成的白板参数，例如白板宽高等。
        ///
        /// 此参数与开始录制接口提供的Whiteboard参数互斥，在本接口与开始录制接口都提供了Whiteboard参数时，优先使用本接口指定的Whiteboard参数进行视频生成，否则使用开始录制接口提供的Whiteboard参数进行视频生成。
        public let whiteboard: Whiteboard?

        /// 视频拼接参数
        ///
        /// 此参数与开始录制接口提供的Concat参数互斥，在本接口与开始录制接口都提供了Concat参数时，优先使用本接口指定的Concat参数进行视频拼接，否则使用开始录制接口提供的Concat参数进行视频拼接。
        public let concat: Concat?

        /// 视频生成混流参数
        ///
        /// 此参数与开始录制接口提供的MixStream参数互斥，在本接口与开始录制接口都提供了MixStream参数时，优先使用本接口指定的MixStream参数进行视频混流，否则使用开始录制接口提供的MixStream参数进行视频拼混流。
        public let mixStream: MixStream?

        /// 视频生成控制参数，用于更精细地指定需要生成哪些流，某一路流是否禁用音频，是否只录制小画面等
        ///
        /// 此参数与开始录制接口提供的RecordControl参数互斥，在本接口与开始录制接口都提供了RecordControl参数时，优先使用本接口指定的RecordControl参数进行视频生成控制，否则使用开始录制接口提供的RecordControl参数进行视频拼生成控制。
        public let recordControl: RecordControl?

        /// 内部参数
        public let extraData: String?

        public init(onlineRecordTaskId: String, sdkAppId: Int64, whiteboard: Whiteboard? = nil, concat: Concat? = nil, mixStream: MixStream? = nil, recordControl: RecordControl? = nil, extraData: String? = nil) {
            self.onlineRecordTaskId = onlineRecordTaskId
            self.sdkAppId = sdkAppId
            self.whiteboard = whiteboard
            self.concat = concat
            self.mixStream = mixStream
            self.recordControl = recordControl
            self.extraData = extraData
        }

        enum CodingKeys: String, CodingKey {
            case onlineRecordTaskId = "OnlineRecordTaskId"
            case sdkAppId = "SdkAppId"
            case whiteboard = "Whiteboard"
            case concat = "Concat"
            case mixStream = "MixStream"
            case recordControl = "RecordControl"
            case extraData = "ExtraData"
        }
    }

    /// CreateVideoGenerationTask返回参数结构体
    public struct CreateVideoGenerationTaskResponse: TCResponse {
        /// 视频生成的任务Id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建录制视频生成任务
    ///
    /// 创建视频生成任务
    @inlinable
    public func createVideoGenerationTask(_ input: CreateVideoGenerationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVideoGenerationTaskResponse> {
        self.client.execute(action: "CreateVideoGenerationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建录制视频生成任务
    ///
    /// 创建视频生成任务
    @inlinable
    public func createVideoGenerationTask(_ input: CreateVideoGenerationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVideoGenerationTaskResponse {
        try await self.client.execute(action: "CreateVideoGenerationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建录制视频生成任务
    ///
    /// 创建视频生成任务
    @inlinable
    public func createVideoGenerationTask(onlineRecordTaskId: String, sdkAppId: Int64, whiteboard: Whiteboard? = nil, concat: Concat? = nil, mixStream: MixStream? = nil, recordControl: RecordControl? = nil, extraData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVideoGenerationTaskResponse> {
        self.createVideoGenerationTask(.init(onlineRecordTaskId: onlineRecordTaskId, sdkAppId: sdkAppId, whiteboard: whiteboard, concat: concat, mixStream: mixStream, recordControl: recordControl, extraData: extraData), region: region, logger: logger, on: eventLoop)
    }

    /// 创建录制视频生成任务
    ///
    /// 创建视频生成任务
    @inlinable
    public func createVideoGenerationTask(onlineRecordTaskId: String, sdkAppId: Int64, whiteboard: Whiteboard? = nil, concat: Concat? = nil, mixStream: MixStream? = nil, recordControl: RecordControl? = nil, extraData: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVideoGenerationTaskResponse {
        try await self.createVideoGenerationTask(.init(onlineRecordTaskId: onlineRecordTaskId, sdkAppId: sdkAppId, whiteboard: whiteboard, concat: concat, mixStream: mixStream, recordControl: recordControl, extraData: extraData), region: region, logger: logger, on: eventLoop)
    }
}
