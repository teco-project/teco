//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Live {
    /// DescribeLogDownloadList请求参数结构体
    public struct DescribeLogDownloadListRequest: TCRequestModel {
        /// 开始时间，北京时间。
        /// 格式：yyyy-mm-dd HH:MM:SS。
        public let startTime: String

        /// 结束时间，北京时间。
        /// 格式：yyyy-mm-dd HH:MM:SS。
        /// 注意：结束时间 - 开始时间 <=7天。
        public let endTime: String

        /// 域名列表。
        public let playDomains: [String]

        public init(startTime: String, endTime: String, playDomains: [String]) {
            self.startTime = startTime
            self.endTime = endTime
            self.playDomains = playDomains
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case playDomains = "PlayDomains"
        }
    }

    /// DescribeLogDownloadList返回参数结构体
    public struct DescribeLogDownloadListResponse: TCResponseModel {
        /// 日志信息列表。
        public let logInfoList: [LogInfo]

        /// 总条数。
        public let totalNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logInfoList = "LogInfoList"
            case totalNum = "TotalNum"
            case requestId = "RequestId"
        }
    }

    /// 批量获取日志URL
    ///
    /// 批量获取日志URL。
    @inlinable
    public func describeLogDownloadList(_ input: DescribeLogDownloadListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogDownloadListResponse> {
        self.client.execute(action: "DescribeLogDownloadList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量获取日志URL
    ///
    /// 批量获取日志URL。
    @inlinable
    public func describeLogDownloadList(_ input: DescribeLogDownloadListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogDownloadListResponse {
        try await self.client.execute(action: "DescribeLogDownloadList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量获取日志URL
    ///
    /// 批量获取日志URL。
    @inlinable
    public func describeLogDownloadList(startTime: String, endTime: String, playDomains: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogDownloadListResponse> {
        self.describeLogDownloadList(DescribeLogDownloadListRequest(startTime: startTime, endTime: endTime, playDomains: playDomains), region: region, logger: logger, on: eventLoop)
    }

    /// 批量获取日志URL
    ///
    /// 批量获取日志URL。
    @inlinable
    public func describeLogDownloadList(startTime: String, endTime: String, playDomains: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogDownloadListResponse {
        try await self.describeLogDownloadList(DescribeLogDownloadListRequest(startTime: startTime, endTime: endTime, playDomains: playDomains), region: region, logger: logger, on: eventLoop)
    }
}
