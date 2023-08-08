//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// DescribeAITaskResult请求参数结构体
    public struct DescribeAITaskResultRequest: TCRequestModel {
        /// AI 任务 ID
        public let taskId: String

        /// 通道ID
        public let channelId: String

        /// 桶内文件的路径。
        public let object: String?

        /// AI 任务识别类型。可选值为 Facemask(口罩识别)、Chefhat(厨师帽识别)、Smoking(抽烟检测)、Chefcloth(厨师服识别)、PhoneCall(接打电话识别)、Pet(宠物识别)、Body(人体识别)和 Car(车辆车牌识别)
        public let detectType: String?

        /// 开始时间时间。秒级时间戳。开始时间和结束时间跨度小于等于30天
        public let beginTime: String?

        /// 结束时间时间。秒级时间戳。开始时间和结束时间跨度小于等于30天
        public let endTime: String?

        /// 页码。默认为1
        public let pageNumber: UInt64?

        /// 每页 AI 识别结果数量。可选值1～100，默认为10（按时间倒序显示识别结果）
        public let pageSize: UInt64?

        public init(taskId: String, channelId: String, object: String? = nil, detectType: String? = nil, beginTime: String? = nil, endTime: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil) {
            self.taskId = taskId
            self.channelId = channelId
            self.object = object
            self.detectType = detectType
            self.beginTime = beginTime
            self.endTime = endTime
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case channelId = "ChannelId"
            case object = "Object"
            case detectType = "DetectType"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }
    }

    /// DescribeAITaskResult返回参数结构体
    public struct DescribeAITaskResultResponse: TCResponseModel {
        /// AI识别结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: AITaskResultResponse?

        /// AI识别结果数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取AI任务识别结果
    @inlinable
    public func describeAITaskResult(_ input: DescribeAITaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAITaskResultResponse> {
        self.client.execute(action: "DescribeAITaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取AI任务识别结果
    @inlinable
    public func describeAITaskResult(_ input: DescribeAITaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAITaskResultResponse {
        try await self.client.execute(action: "DescribeAITaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取AI任务识别结果
    @inlinable
    public func describeAITaskResult(taskId: String, channelId: String, object: String? = nil, detectType: String? = nil, beginTime: String? = nil, endTime: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAITaskResultResponse> {
        self.describeAITaskResult(.init(taskId: taskId, channelId: channelId, object: object, detectType: detectType, beginTime: beginTime, endTime: endTime, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 获取AI任务识别结果
    @inlinable
    public func describeAITaskResult(taskId: String, channelId: String, object: String? = nil, detectType: String? = nil, beginTime: String? = nil, endTime: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAITaskResultResponse {
        try await self.describeAITaskResult(.init(taskId: taskId, channelId: channelId, object: object, detectType: detectType, beginTime: beginTime, endTime: endTime, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }
}