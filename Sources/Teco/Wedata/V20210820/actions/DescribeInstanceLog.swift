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
    /// DescribeInstanceLog请求参数结构体
    public struct DescribeInstanceLogRequest: TCRequestModel {
        /// 任务id
        public let taskId: String

        /// 数据时间
        public let curRunDate: String

        /// 服务器Ip
        public let brokerIp: String

        /// 文件Name
        public let originFileName: String

        public init(taskId: String, curRunDate: String, brokerIp: String, originFileName: String) {
            self.taskId = taskId
            self.curRunDate = curRunDate
            self.brokerIp = brokerIp
            self.originFileName = originFileName
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case curRunDate = "CurRunDate"
            case brokerIp = "BrokerIp"
            case originFileName = "OriginFileName"
        }
    }

    /// DescribeInstanceLog返回参数结构体
    public struct DescribeInstanceLogResponse: TCResponseModel {
        /// 返回结果
        public let data: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取实例运行日志
    @inlinable
    public func describeInstanceLog(_ input: DescribeInstanceLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceLogResponse> {
        self.client.execute(action: "DescribeInstanceLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取实例运行日志
    @inlinable
    public func describeInstanceLog(_ input: DescribeInstanceLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLogResponse {
        try await self.client.execute(action: "DescribeInstanceLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取实例运行日志
    @inlinable
    public func describeInstanceLog(taskId: String, curRunDate: String, brokerIp: String, originFileName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceLogResponse> {
        self.describeInstanceLog(.init(taskId: taskId, curRunDate: curRunDate, brokerIp: brokerIp, originFileName: originFileName), region: region, logger: logger, on: eventLoop)
    }

    /// 获取实例运行日志
    @inlinable
    public func describeInstanceLog(taskId: String, curRunDate: String, brokerIp: String, originFileName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceLogResponse {
        try await self.describeInstanceLog(.init(taskId: taskId, curRunDate: curRunDate, brokerIp: brokerIp, originFileName: originFileName), region: region, logger: logger, on: eventLoop)
    }
}
