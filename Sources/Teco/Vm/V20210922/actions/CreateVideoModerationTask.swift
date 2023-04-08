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

extension Vm {
    /// CreateVideoModerationTask请求参数结构体
    public struct CreateVideoModerationTaskRequest: TCRequestModel {
        /// 业务类型, 定义 模版策略，输出存储配置。如果没有BizType，可以先参考 【创建业务配置】接口进行创建
        public let bizType: String

        /// 任务类型：可选VIDEO（点播视频），LIVE_VIDEO（直播视频）
        public let type: String

        /// 输入的任务信息，最多可以同时创建10个任务
        public let tasks: [TaskInput]

        /// 回调签名key，具体可以查看签名文档。
        public let seed: String?

        /// 接收审核信息回调地址，如果设置，则审核过程中产生的违规音频片段和画面截帧发送此接口
        public let callbackUrl: String?

        /// 审核排队优先级。当您有多个视频审核任务排队时，可以根据这个参数控制排队优先级。用于处理插队等逻辑。默认该参数为0
        public let priority: Int64?

        public init(bizType: String, type: String, tasks: [TaskInput], seed: String? = nil, callbackUrl: String? = nil, priority: Int64? = nil) {
            self.bizType = bizType
            self.type = type
            self.tasks = tasks
            self.seed = seed
            self.callbackUrl = callbackUrl
            self.priority = priority
        }

        enum CodingKeys: String, CodingKey {
            case bizType = "BizType"
            case type = "Type"
            case tasks = "Tasks"
            case seed = "Seed"
            case callbackUrl = "CallbackUrl"
            case priority = "Priority"
        }
    }

    /// CreateVideoModerationTask返回参数结构体
    public struct CreateVideoModerationTaskResponse: TCResponseModel {
        /// 任务创建结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [TaskResult]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case results = "Results"
            case requestId = "RequestId"
        }
    }

    /// 创建视频审核任务
    ///
    /// 通过URL或存储桶创建审核任务。
    ///
    /// ### 直播断流处理说明：
    /// - 请确认已对接[取消任务](https://cloud.tencent.com/document/product/1265/80018)。
    /// - 如果直播任务取消/结束，则终止直播拉流并退出审核。
    /// - 如果直播任务没有取消/结束，直播视频推流因故中断，产品将在将在10分钟内持续拉流重试。如果10分钟检测到图片截帧/音频切片数据，则恢复正常审核，反之，则终止拉流并退出审核。在拉流终止后，用户如有审核需求，需重新送审。
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func createVideoModerationTask(_ input: CreateVideoModerationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVideoModerationTaskResponse> {
        self.client.execute(action: "CreateVideoModerationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建视频审核任务
    ///
    /// 通过URL或存储桶创建审核任务。
    ///
    /// ### 直播断流处理说明：
    /// - 请确认已对接[取消任务](https://cloud.tencent.com/document/product/1265/80018)。
    /// - 如果直播任务取消/结束，则终止直播拉流并退出审核。
    /// - 如果直播任务没有取消/结束，直播视频推流因故中断，产品将在将在10分钟内持续拉流重试。如果10分钟检测到图片截帧/音频切片数据，则恢复正常审核，反之，则终止拉流并退出审核。在拉流终止后，用户如有审核需求，需重新送审。
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func createVideoModerationTask(_ input: CreateVideoModerationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVideoModerationTaskResponse {
        try await self.client.execute(action: "CreateVideoModerationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建视频审核任务
    ///
    /// 通过URL或存储桶创建审核任务。
    ///
    /// ### 直播断流处理说明：
    /// - 请确认已对接[取消任务](https://cloud.tencent.com/document/product/1265/80018)。
    /// - 如果直播任务取消/结束，则终止直播拉流并退出审核。
    /// - 如果直播任务没有取消/结束，直播视频推流因故中断，产品将在将在10分钟内持续拉流重试。如果10分钟检测到图片截帧/音频切片数据，则恢复正常审核，反之，则终止拉流并退出审核。在拉流终止后，用户如有审核需求，需重新送审。
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func createVideoModerationTask(bizType: String, type: String, tasks: [TaskInput], seed: String? = nil, callbackUrl: String? = nil, priority: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVideoModerationTaskResponse> {
        self.createVideoModerationTask(.init(bizType: bizType, type: type, tasks: tasks, seed: seed, callbackUrl: callbackUrl, priority: priority), region: region, logger: logger, on: eventLoop)
    }

    /// 创建视频审核任务
    ///
    /// 通过URL或存储桶创建审核任务。
    ///
    /// ### 直播断流处理说明：
    /// - 请确认已对接[取消任务](https://cloud.tencent.com/document/product/1265/80018)。
    /// - 如果直播任务取消/结束，则终止直播拉流并退出审核。
    /// - 如果直播任务没有取消/结束，直播视频推流因故中断，产品将在将在10分钟内持续拉流重试。如果10分钟检测到图片截帧/音频切片数据，则恢复正常审核，反之，则终止拉流并退出审核。在拉流终止后，用户如有审核需求，需重新送审。
    ///
    /// 默认接口请求频率限制：20次/秒。
    @inlinable
    public func createVideoModerationTask(bizType: String, type: String, tasks: [TaskInput], seed: String? = nil, callbackUrl: String? = nil, priority: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVideoModerationTaskResponse {
        try await self.createVideoModerationTask(.init(bizType: bizType, type: type, tasks: tasks, seed: seed, callbackUrl: callbackUrl, priority: priority), region: region, logger: logger, on: eventLoop)
    }
}
