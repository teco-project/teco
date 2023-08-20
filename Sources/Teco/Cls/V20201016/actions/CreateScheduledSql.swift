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
    /// CreateScheduledSql请求参数结构体
    public struct CreateScheduledSqlRequest: TCRequest {
        /// 源日志主题
        public let srcTopicId: String

        /// 任务名称
        public let name: String

        /// 任务启动状态.  1开启,  2关闭
        public let enableFlag: Int64

        /// 定时SQL分析目标日志主题
        public let dstResource: ScheduledSqlResouceInfo

        /// 查询语句
        public let scheduledSqlContent: String

        /// 调度开始时间,Unix时间戳，单位ms
        public let processStartTime: UInt64

        /// 调度类型，1:持续运行 2:指定时间范围
        public let processType: Int64

        /// 调度周期(分钟)
        public let processPeriod: Int64

        /// 单次查询的时间窗口
        public let processTimeWindow: String

        /// 执行延迟(秒)
        public let processDelay: Int64

        /// 源topicId的地域信息
        public let srcTopicRegion: String

        /// 调度结束时间，当ProcessType=2时为必传字段, Unix时间戳，单位ms
        public let processEndTime: UInt64?

        /// 查询语法规则。 默认值为0。0：Lucene语法，1：CQL语法
        public let syntaxRule: UInt64?

        public init(srcTopicId: String, name: String, enableFlag: Int64, dstResource: ScheduledSqlResouceInfo, scheduledSqlContent: String, processStartTime: UInt64, processType: Int64, processPeriod: Int64, processTimeWindow: String, processDelay: Int64, srcTopicRegion: String, processEndTime: UInt64? = nil, syntaxRule: UInt64? = nil) {
            self.srcTopicId = srcTopicId
            self.name = name
            self.enableFlag = enableFlag
            self.dstResource = dstResource
            self.scheduledSqlContent = scheduledSqlContent
            self.processStartTime = processStartTime
            self.processType = processType
            self.processPeriod = processPeriod
            self.processTimeWindow = processTimeWindow
            self.processDelay = processDelay
            self.srcTopicRegion = srcTopicRegion
            self.processEndTime = processEndTime
            self.syntaxRule = syntaxRule
        }

        enum CodingKeys: String, CodingKey {
            case srcTopicId = "SrcTopicId"
            case name = "Name"
            case enableFlag = "EnableFlag"
            case dstResource = "DstResource"
            case scheduledSqlContent = "ScheduledSqlContent"
            case processStartTime = "ProcessStartTime"
            case processType = "ProcessType"
            case processPeriod = "ProcessPeriod"
            case processTimeWindow = "ProcessTimeWindow"
            case processDelay = "ProcessDelay"
            case srcTopicRegion = "SrcTopicRegion"
            case processEndTime = "ProcessEndTime"
            case syntaxRule = "SyntaxRule"
        }
    }

    /// CreateScheduledSql返回参数结构体
    public struct CreateScheduledSqlResponse: TCResponse {
        /// 任务id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建定时SQL分析任务
    ///
    /// 本接口用于创建定时SQL分析任务
    @inlinable
    public func createScheduledSql(_ input: CreateScheduledSqlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateScheduledSqlResponse> {
        self.client.execute(action: "CreateScheduledSql", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建定时SQL分析任务
    ///
    /// 本接口用于创建定时SQL分析任务
    @inlinable
    public func createScheduledSql(_ input: CreateScheduledSqlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScheduledSqlResponse {
        try await self.client.execute(action: "CreateScheduledSql", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建定时SQL分析任务
    ///
    /// 本接口用于创建定时SQL分析任务
    @inlinable
    public func createScheduledSql(srcTopicId: String, name: String, enableFlag: Int64, dstResource: ScheduledSqlResouceInfo, scheduledSqlContent: String, processStartTime: UInt64, processType: Int64, processPeriod: Int64, processTimeWindow: String, processDelay: Int64, srcTopicRegion: String, processEndTime: UInt64? = nil, syntaxRule: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateScheduledSqlResponse> {
        self.createScheduledSql(.init(srcTopicId: srcTopicId, name: name, enableFlag: enableFlag, dstResource: dstResource, scheduledSqlContent: scheduledSqlContent, processStartTime: processStartTime, processType: processType, processPeriod: processPeriod, processTimeWindow: processTimeWindow, processDelay: processDelay, srcTopicRegion: srcTopicRegion, processEndTime: processEndTime, syntaxRule: syntaxRule), region: region, logger: logger, on: eventLoop)
    }

    /// 创建定时SQL分析任务
    ///
    /// 本接口用于创建定时SQL分析任务
    @inlinable
    public func createScheduledSql(srcTopicId: String, name: String, enableFlag: Int64, dstResource: ScheduledSqlResouceInfo, scheduledSqlContent: String, processStartTime: UInt64, processType: Int64, processPeriod: Int64, processTimeWindow: String, processDelay: Int64, srcTopicRegion: String, processEndTime: UInt64? = nil, syntaxRule: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScheduledSqlResponse {
        try await self.createScheduledSql(.init(srcTopicId: srcTopicId, name: name, enableFlag: enableFlag, dstResource: dstResource, scheduledSqlContent: scheduledSqlContent, processStartTime: processStartTime, processType: processType, processPeriod: processPeriod, processTimeWindow: processTimeWindow, processDelay: processDelay, srcTopicRegion: srcTopicRegion, processEndTime: processEndTime, syntaxRule: syntaxRule), region: region, logger: logger, on: eventLoop)
    }
}
