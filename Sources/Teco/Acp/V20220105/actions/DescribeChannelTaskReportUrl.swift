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

extension Acp {
    /// DescribeChannelTaskReportUrl请求参数结构体
    public struct DescribeChannelTaskReportUrlRequest: TCRequestModel {
        /// 任务来源, 0:小程序诊断, 1:预留字段(暂未使用), 2:app诊断(android), 3:app漏洞扫描;
        public let source: Int64

        /// 应用平台, 0:android, 1: iOS，2:小程序
        public let platform: Int64

        /// 任务id
        public let taskID: String

        /// 任务类型, 0:基础版, 1:专家版, 2:本地化
        public let taskType: Int64

        /// 报告类型, 0:诊断报告, 1:堆栈报告, 2:视频证据(预留), 3:报告json结果
        public let reportType: Int64

        /// 子渠道APP MD5值
        public let appMD5: String

        public init(source: Int64, platform: Int64, taskID: String, taskType: Int64, reportType: Int64, appMD5: String) {
            self.source = source
            self.platform = platform
            self.taskID = taskID
            self.taskType = taskType
            self.reportType = reportType
            self.appMD5 = appMD5
        }

        enum CodingKeys: String, CodingKey {
            case source = "Source"
            case platform = "Platform"
            case taskID = "TaskID"
            case taskType = "TaskType"
            case reportType = "ReportType"
            case appMD5 = "AppMD5"
        }
    }

    /// DescribeChannelTaskReportUrl返回参数结构体
    public struct DescribeChannelTaskReportUrlResponse: TCResponseModel {
        /// 返回值, 0:成功, 其他值请查看“返回值”定义
        public let result: Int64

        /// 诊断报告/堆栈信息/报告json结果下载链接
        public let reportUrl: String

        /// 诊断报告/堆栈/报告json结果的名称
        public let reportTitle: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case reportUrl = "ReportUrl"
            case reportTitle = "ReportTitle"
            case requestId = "RequestId"
        }
    }

    /// 获取子渠道应用合规隐私诊断任务报告url
    ///
    /// 获取子渠道的App合规诊断任务报告url
    @inlinable
    public func describeChannelTaskReportUrl(_ input: DescribeChannelTaskReportUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelTaskReportUrlResponse> {
        self.client.execute(action: "DescribeChannelTaskReportUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取子渠道应用合规隐私诊断任务报告url
    ///
    /// 获取子渠道的App合规诊断任务报告url
    @inlinable
    public func describeChannelTaskReportUrl(_ input: DescribeChannelTaskReportUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelTaskReportUrlResponse {
        try await self.client.execute(action: "DescribeChannelTaskReportUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取子渠道应用合规隐私诊断任务报告url
    ///
    /// 获取子渠道的App合规诊断任务报告url
    @inlinable
    public func describeChannelTaskReportUrl(source: Int64, platform: Int64, taskID: String, taskType: Int64, reportType: Int64, appMD5: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelTaskReportUrlResponse> {
        self.describeChannelTaskReportUrl(.init(source: source, platform: platform, taskID: taskID, taskType: taskType, reportType: reportType, appMD5: appMD5), region: region, logger: logger, on: eventLoop)
    }

    /// 获取子渠道应用合规隐私诊断任务报告url
    ///
    /// 获取子渠道的App合规诊断任务报告url
    @inlinable
    public func describeChannelTaskReportUrl(source: Int64, platform: Int64, taskID: String, taskType: Int64, reportType: Int64, appMD5: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelTaskReportUrlResponse {
        try await self.describeChannelTaskReportUrl(.init(source: source, platform: platform, taskID: taskID, taskType: taskType, reportType: reportType, appMD5: appMD5), region: region, logger: logger, on: eventLoop)
    }
}
