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

extension Wedata {
    /// DescribeInstanceLogFile请求参数结构体
    public struct DescribeInstanceLogFileRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        /// 任务ID
        public let taskId: String

        /// 实例数据时间
        public let curRunDate: String

        /// 执行机IP
        public let brokerIp: String

        /// 日志文件名
        public let originFileName: String

        public init(projectId: String, taskId: String, curRunDate: String, brokerIp: String, originFileName: String) {
            self.projectId = projectId
            self.taskId = taskId
            self.curRunDate = curRunDate
            self.brokerIp = brokerIp
            self.originFileName = originFileName
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskId = "TaskId"
            case curRunDate = "CurRunDate"
            case brokerIp = "BrokerIp"
            case originFileName = "OriginFileName"
        }
    }

    /// DescribeInstanceLogFile返回参数结构体
    public struct DescribeInstanceLogFileResponse: TCResponseModel {
        /// 下载文件详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: InstanceDownloadLogInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 下载日志文件
    ///
    /// 下载日志文件，返回日志URL
    @inlinable
    public func describeInstanceLogFile(_ input: DescribeInstanceLogFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceLogFileResponse> {
        self.client.execute(action: "DescribeInstanceLogFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下载日志文件
    ///
    /// 下载日志文件，返回日志URL
    @inlinable
    public func describeInstanceLogFile(_ input: DescribeInstanceLogFileRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLogFileResponse {
        try await self.client.execute(action: "DescribeInstanceLogFile", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下载日志文件
    ///
    /// 下载日志文件，返回日志URL
    @inlinable
    public func describeInstanceLogFile(projectId: String, taskId: String, curRunDate: String, brokerIp: String, originFileName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceLogFileResponse> {
        self.describeInstanceLogFile(.init(projectId: projectId, taskId: taskId, curRunDate: curRunDate, brokerIp: brokerIp, originFileName: originFileName), region: region, logger: logger, on: eventLoop)
    }

    /// 下载日志文件
    ///
    /// 下载日志文件，返回日志URL
    @inlinable
    public func describeInstanceLogFile(projectId: String, taskId: String, curRunDate: String, brokerIp: String, originFileName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLogFileResponse {
        try await self.describeInstanceLogFile(.init(projectId: projectId, taskId: taskId, curRunDate: curRunDate, brokerIp: brokerIp, originFileName: originFileName), region: region, logger: logger, on: eventLoop)
    }
}
