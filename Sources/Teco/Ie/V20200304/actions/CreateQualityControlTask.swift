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

extension Ie {
    /// CreateQualityControlTask请求参数结构体
    public struct CreateQualityControlTaskRequest: TCRequest {
        /// 质检任务参数
        public let qualityControlInfo: QualityControlInfo

        /// 视频源信息
        public let downInfo: DownInfo

        /// 任务结果回调地址信息
        public let callbackInfo: CallbackInfo?

        public init(qualityControlInfo: QualityControlInfo, downInfo: DownInfo, callbackInfo: CallbackInfo? = nil) {
            self.qualityControlInfo = qualityControlInfo
            self.downInfo = downInfo
            self.callbackInfo = callbackInfo
        }

        enum CodingKeys: String, CodingKey {
            case qualityControlInfo = "QualityControlInfo"
            case downInfo = "DownInfo"
            case callbackInfo = "CallbackInfo"
        }
    }

    /// CreateQualityControlTask返回参数结构体
    public struct CreateQualityControlTaskResponse: TCResponse {
        /// 质检任务 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建媒体质检任务
    ///
    /// 通过接口可以智能检测视频画面中抖动重影、模糊、低光照、过曝光、黑边、白边、黑屏、白屏、花屏、噪点、马赛克、二维码等在内的多个场景，还可以自动检测视频无音频异常、无声音片段。
    @inlinable
    public func createQualityControlTask(_ input: CreateQualityControlTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateQualityControlTaskResponse> {
        self.client.execute(action: "CreateQualityControlTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建媒体质检任务
    ///
    /// 通过接口可以智能检测视频画面中抖动重影、模糊、低光照、过曝光、黑边、白边、黑屏、白屏、花屏、噪点、马赛克、二维码等在内的多个场景，还可以自动检测视频无音频异常、无声音片段。
    @inlinable
    public func createQualityControlTask(_ input: CreateQualityControlTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateQualityControlTaskResponse {
        try await self.client.execute(action: "CreateQualityControlTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建媒体质检任务
    ///
    /// 通过接口可以智能检测视频画面中抖动重影、模糊、低光照、过曝光、黑边、白边、黑屏、白屏、花屏、噪点、马赛克、二维码等在内的多个场景，还可以自动检测视频无音频异常、无声音片段。
    @inlinable
    public func createQualityControlTask(qualityControlInfo: QualityControlInfo, downInfo: DownInfo, callbackInfo: CallbackInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateQualityControlTaskResponse> {
        self.createQualityControlTask(.init(qualityControlInfo: qualityControlInfo, downInfo: downInfo, callbackInfo: callbackInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 创建媒体质检任务
    ///
    /// 通过接口可以智能检测视频画面中抖动重影、模糊、低光照、过曝光、黑边、白边、黑屏、白屏、花屏、噪点、马赛克、二维码等在内的多个场景，还可以自动检测视频无音频异常、无声音片段。
    @inlinable
    public func createQualityControlTask(qualityControlInfo: QualityControlInfo, downInfo: DownInfo, callbackInfo: CallbackInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateQualityControlTaskResponse {
        try await self.createQualityControlTask(.init(qualityControlInfo: qualityControlInfo, downInfo: downInfo, callbackInfo: callbackInfo), region: region, logger: logger, on: eventLoop)
    }
}
