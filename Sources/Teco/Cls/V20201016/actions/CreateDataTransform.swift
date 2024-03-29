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

extension Cls {
    /// CreateDataTransform请求参数结构体
    public struct CreateDataTransformRequest: TCRequest {
        /// 任务类型. 1: 指定主题；2:动态创建
        public let funcType: Int64

        /// 源日志主题
        public let srcTopicId: String

        /// 加工任务名称
        public let name: String

        /// 加工语句
        public let etlContent: String

        /// 加工类型  1 使用源日志主题中的随机数据，进行加工预览 :2 使用用户自定义测试数据，进行加工预览 3 创建真实加工任务
        public let taskType: Int64

        /// 任务启动状态.   默认为1:开启,  2:关闭
        public let enableFlag: Int64?

        /// 加工任务目的topic_id以及别名,当FuncType=1时，该参数必填，当FuncType=2时，无需填写
        public let dstResources: [DataTransformResouceInfo]?

        /// 用于预览加工结果的测试数据
        public let previewLogStatistics: [PreviewLogStatistic]?

        public init(funcType: Int64, srcTopicId: String, name: String, etlContent: String, taskType: Int64, enableFlag: Int64? = nil, dstResources: [DataTransformResouceInfo]? = nil, previewLogStatistics: [PreviewLogStatistic]? = nil) {
            self.funcType = funcType
            self.srcTopicId = srcTopicId
            self.name = name
            self.etlContent = etlContent
            self.taskType = taskType
            self.enableFlag = enableFlag
            self.dstResources = dstResources
            self.previewLogStatistics = previewLogStatistics
        }

        enum CodingKeys: String, CodingKey {
            case funcType = "FuncType"
            case srcTopicId = "SrcTopicId"
            case name = "Name"
            case etlContent = "EtlContent"
            case taskType = "TaskType"
            case enableFlag = "EnableFlag"
            case dstResources = "DstResources"
            case previewLogStatistics = "PreviewLogStatistics"
        }
    }

    /// CreateDataTransform返回参数结构体
    public struct CreateDataTransformResponse: TCResponse {
        /// 任务id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建数据加工任务
    ///
    /// 本接口用于创建数据加工任务。
    @inlinable
    public func createDataTransform(_ input: CreateDataTransformRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataTransformResponse> {
        self.client.execute(action: "CreateDataTransform", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建数据加工任务
    ///
    /// 本接口用于创建数据加工任务。
    @inlinable
    public func createDataTransform(_ input: CreateDataTransformRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataTransformResponse {
        try await self.client.execute(action: "CreateDataTransform", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建数据加工任务
    ///
    /// 本接口用于创建数据加工任务。
    @inlinable
    public func createDataTransform(funcType: Int64, srcTopicId: String, name: String, etlContent: String, taskType: Int64, enableFlag: Int64? = nil, dstResources: [DataTransformResouceInfo]? = nil, previewLogStatistics: [PreviewLogStatistic]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDataTransformResponse> {
        self.createDataTransform(.init(funcType: funcType, srcTopicId: srcTopicId, name: name, etlContent: etlContent, taskType: taskType, enableFlag: enableFlag, dstResources: dstResources, previewLogStatistics: previewLogStatistics), region: region, logger: logger, on: eventLoop)
    }

    /// 创建数据加工任务
    ///
    /// 本接口用于创建数据加工任务。
    @inlinable
    public func createDataTransform(funcType: Int64, srcTopicId: String, name: String, etlContent: String, taskType: Int64, enableFlag: Int64? = nil, dstResources: [DataTransformResouceInfo]? = nil, previewLogStatistics: [PreviewLogStatistic]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDataTransformResponse {
        try await self.createDataTransform(.init(funcType: funcType, srcTopicId: srcTopicId, name: name, etlContent: etlContent, taskType: taskType, enableFlag: enableFlag, dstResources: dstResources, previewLogStatistics: previewLogStatistics), region: region, logger: logger, on: eventLoop)
    }
}
