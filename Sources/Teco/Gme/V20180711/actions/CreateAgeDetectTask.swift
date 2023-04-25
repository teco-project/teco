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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Gme {
    /// CreateAgeDetectTask请求参数结构体
    public struct CreateAgeDetectTaskRequest: TCRequestModel {
        /// 应用id
        public let bizId: Int64

        /// 语音检测子任务列表，列表最多支持100个检测子任务。结构体中包含：
        /// <li>DataId：数据的唯一ID</li>
        /// <li>Url：数据文件的url，为 urlencode 编码，流式则为拉流地址</li>
        public let tasks: [AgeDetectTask]

        /// 任务结束时gme后台会自动触发回调
        public let callback: String?

        public init(bizId: Int64, tasks: [AgeDetectTask], callback: String? = nil) {
            self.bizId = bizId
            self.tasks = tasks
            self.callback = callback
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case tasks = "Tasks"
            case callback = "Callback"
        }
    }

    /// CreateAgeDetectTask返回参数结构体
    public struct CreateAgeDetectTaskResponse: TCResponseModel {
        /// 本次任务提交后唯一id，用于获取任务运行结果
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 提交年龄语音识别任务
    ///
    /// 用于创建年龄语音识别任务的接口，请求频率10次/秒。该接口目前通过白名单开放试用，如有需求，请提交工单申请。
    /// </br>
    /// <h4><b>接口功能说明：</b></h4>
    /// <li>支持对语音文件进行检测，判断是否为未成年人。</li>
    /// <li>支持批量提交检测子任务。检测子任务列表最多支持100个。</li>
    /// </br>
    /// <h4><b>音频文件限制说明：</b></h4>
    /// <li>音频文件大小限制：10 M</li>
    /// <li>音频文件时长限制：3分钟</li>
    /// <li>音频文件格式支持的类型：.wav、.m4a、.amr、.mp3、.aac、.wma、.ogg</li>
    /// </br>
    @inlinable
    public func createAgeDetectTask(_ input: CreateAgeDetectTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAgeDetectTaskResponse> {
        self.client.execute(action: "CreateAgeDetectTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交年龄语音识别任务
    ///
    /// 用于创建年龄语音识别任务的接口，请求频率10次/秒。该接口目前通过白名单开放试用，如有需求，请提交工单申请。
    /// </br>
    /// <h4><b>接口功能说明：</b></h4>
    /// <li>支持对语音文件进行检测，判断是否为未成年人。</li>
    /// <li>支持批量提交检测子任务。检测子任务列表最多支持100个。</li>
    /// </br>
    /// <h4><b>音频文件限制说明：</b></h4>
    /// <li>音频文件大小限制：10 M</li>
    /// <li>音频文件时长限制：3分钟</li>
    /// <li>音频文件格式支持的类型：.wav、.m4a、.amr、.mp3、.aac、.wma、.ogg</li>
    /// </br>
    @inlinable
    public func createAgeDetectTask(_ input: CreateAgeDetectTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAgeDetectTaskResponse {
        try await self.client.execute(action: "CreateAgeDetectTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交年龄语音识别任务
    ///
    /// 用于创建年龄语音识别任务的接口，请求频率10次/秒。该接口目前通过白名单开放试用，如有需求，请提交工单申请。
    /// </br>
    /// <h4><b>接口功能说明：</b></h4>
    /// <li>支持对语音文件进行检测，判断是否为未成年人。</li>
    /// <li>支持批量提交检测子任务。检测子任务列表最多支持100个。</li>
    /// </br>
    /// <h4><b>音频文件限制说明：</b></h4>
    /// <li>音频文件大小限制：10 M</li>
    /// <li>音频文件时长限制：3分钟</li>
    /// <li>音频文件格式支持的类型：.wav、.m4a、.amr、.mp3、.aac、.wma、.ogg</li>
    /// </br>
    @inlinable
    public func createAgeDetectTask(bizId: Int64, tasks: [AgeDetectTask], callback: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAgeDetectTaskResponse> {
        self.createAgeDetectTask(.init(bizId: bizId, tasks: tasks, callback: callback), region: region, logger: logger, on: eventLoop)
    }

    /// 提交年龄语音识别任务
    ///
    /// 用于创建年龄语音识别任务的接口，请求频率10次/秒。该接口目前通过白名单开放试用，如有需求，请提交工单申请。
    /// </br>
    /// <h4><b>接口功能说明：</b></h4>
    /// <li>支持对语音文件进行检测，判断是否为未成年人。</li>
    /// <li>支持批量提交检测子任务。检测子任务列表最多支持100个。</li>
    /// </br>
    /// <h4><b>音频文件限制说明：</b></h4>
    /// <li>音频文件大小限制：10 M</li>
    /// <li>音频文件时长限制：3分钟</li>
    /// <li>音频文件格式支持的类型：.wav、.m4a、.amr、.mp3、.aac、.wma、.ogg</li>
    /// </br>
    @inlinable
    public func createAgeDetectTask(bizId: Int64, tasks: [AgeDetectTask], callback: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAgeDetectTaskResponse {
        try await self.createAgeDetectTask(.init(bizId: bizId, tasks: tasks, callback: callback), region: region, logger: logger, on: eventLoop)
    }
}
