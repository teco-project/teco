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

extension Asr {
    /// DescribeTaskStatus请求参数结构体
    public struct DescribeTaskStatusRequest: TCRequest {
        /// 从CreateRecTask接口获取的TaskId，用于获取任务状态与结果。
        public let taskId: UInt64

        public init(taskId: UInt64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeTaskStatus返回参数结构体
    public struct DescribeTaskStatusResponse: TCResponse {
        /// 录音文件识别的请求返回结果。
        public let data: TaskStatus

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 录音文件识别结果查询
    ///
    /// 在调用录音文件识别请求接口后，有回调和轮询两种方式获取识别结果。
    ///
    /// • 当采用回调方式时，识别完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见[ 录音识别结果回调 ](https://cloud.tencent.com/document/product/1093/52632)。
    ///
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见下文说明。
    ///
    /// •   请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    ///
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    ///
    /// •   默认接口请求频率限制：50次/秒，如您有提高请求频率限制的需求，请提[工单](https://console.cloud.tencent.com/workorder/category)进行咨询。
    @inlinable
    public func describeTaskStatus(_ input: DescribeTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskStatusResponse> {
        self.client.execute(action: "DescribeTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 录音文件识别结果查询
    ///
    /// 在调用录音文件识别请求接口后，有回调和轮询两种方式获取识别结果。
    ///
    /// • 当采用回调方式时，识别完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见[ 录音识别结果回调 ](https://cloud.tencent.com/document/product/1093/52632)。
    ///
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见下文说明。
    ///
    /// •   请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    ///
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    ///
    /// •   默认接口请求频率限制：50次/秒，如您有提高请求频率限制的需求，请提[工单](https://console.cloud.tencent.com/workorder/category)进行咨询。
    @inlinable
    public func describeTaskStatus(_ input: DescribeTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskStatusResponse {
        try await self.client.execute(action: "DescribeTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 录音文件识别结果查询
    ///
    /// 在调用录音文件识别请求接口后，有回调和轮询两种方式获取识别结果。
    ///
    /// • 当采用回调方式时，识别完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见[ 录音识别结果回调 ](https://cloud.tencent.com/document/product/1093/52632)。
    ///
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见下文说明。
    ///
    /// •   请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    ///
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    ///
    /// •   默认接口请求频率限制：50次/秒，如您有提高请求频率限制的需求，请提[工单](https://console.cloud.tencent.com/workorder/category)进行咨询。
    @inlinable
    public func describeTaskStatus(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskStatusResponse> {
        self.describeTaskStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 录音文件识别结果查询
    ///
    /// 在调用录音文件识别请求接口后，有回调和轮询两种方式获取识别结果。
    ///
    /// • 当采用回调方式时，识别完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见[ 录音识别结果回调 ](https://cloud.tencent.com/document/product/1093/52632)。
    ///
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见下文说明。
    ///
    /// •   请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    ///
    /// •   签名方法参考 [公共参数](https://cloud.tencent.com/document/api/1093/35640) 中签名方法v3。
    ///
    /// •   默认接口请求频率限制：50次/秒，如您有提高请求频率限制的需求，请提[工单](https://console.cloud.tencent.com/workorder/category)进行咨询。
    @inlinable
    public func describeTaskStatus(taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskStatusResponse {
        try await self.describeTaskStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
