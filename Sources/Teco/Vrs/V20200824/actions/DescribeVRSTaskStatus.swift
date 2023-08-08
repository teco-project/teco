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

extension Vrs {
    /// DescribeVRSTaskStatus请求参数结构体
    public struct DescribeVRSTaskStatusRequest: TCRequestModel {
        /// 任务ID
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeVRSTaskStatus返回参数结构体
    public struct DescribeVRSTaskStatusResponse: TCResponseModel {
        /// 声音复刻任务结果
        public let data: DescribeVRSTaskStatusRespData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 声音复刻任务结果查询接口
    ///
    /// 在调用声音复刻创建任务请求接口后，有回调和轮询两种方式获取识别结果。
    /// • 当采用回调方式时，识别完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见 声音复刻结果回调 。
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见下文说明。
    /// • 请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func describeVRSTaskStatus(_ input: DescribeVRSTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVRSTaskStatusResponse> {
        self.client.execute(action: "DescribeVRSTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 声音复刻任务结果查询接口
    ///
    /// 在调用声音复刻创建任务请求接口后，有回调和轮询两种方式获取识别结果。
    /// • 当采用回调方式时，识别完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见 声音复刻结果回调 。
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见下文说明。
    /// • 请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func describeVRSTaskStatus(_ input: DescribeVRSTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVRSTaskStatusResponse {
        try await self.client.execute(action: "DescribeVRSTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 声音复刻任务结果查询接口
    ///
    /// 在调用声音复刻创建任务请求接口后，有回调和轮询两种方式获取识别结果。
    /// • 当采用回调方式时，识别完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见 声音复刻结果回调 。
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见下文说明。
    /// • 请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func describeVRSTaskStatus(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVRSTaskStatusResponse> {
        self.describeVRSTaskStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 声音复刻任务结果查询接口
    ///
    /// 在调用声音复刻创建任务请求接口后，有回调和轮询两种方式获取识别结果。
    /// • 当采用回调方式时，识别完成后会将结果通过 POST 请求的形式通知到用户在请求时填写的回调 URL，具体请参见 声音复刻结果回调 。
    /// • 当采用轮询方式时，需要主动提交任务ID来轮询识别结果，共有任务成功、等待、执行中和失败四种结果，具体信息请参见下文说明。
    /// • 请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func describeVRSTaskStatus(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVRSTaskStatusResponse {
        try await self.describeVRSTaskStatus(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}