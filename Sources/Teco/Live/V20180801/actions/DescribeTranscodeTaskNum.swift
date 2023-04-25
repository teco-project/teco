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

extension Live {
    /// DescribeTranscodeTaskNum请求参数结构体
    public struct DescribeTranscodeTaskNumRequest: TCRequestModel {
        /// 起始时间，格式：yyyy-mm-dd HH:MM:SS。
        public let startTime: String

        /// 结束时间，格式：yyyy-mm-dd HH:MM:SS。
        public let endTime: String

        /// 推流域名列表，不填表示总体数据。
        public let pushDomains: [String]?

        public init(startTime: String, endTime: String, pushDomains: [String]? = nil) {
            self.startTime = startTime
            self.endTime = endTime
            self.pushDomains = pushDomains
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case pushDomains = "PushDomains"
        }
    }

    /// DescribeTranscodeTaskNum返回参数结构体
    public struct DescribeTranscodeTaskNumResponse: TCResponseModel {
        /// 任务数列表。
        public let dataInfoList: [TranscodeTaskNum]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataInfoList = "DataInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询转码任务数。
    @inlinable
    public func describeTranscodeTaskNum(_ input: DescribeTranscodeTaskNumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTranscodeTaskNumResponse> {
        self.client.execute(action: "DescribeTranscodeTaskNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询转码任务数。
    @inlinable
    public func describeTranscodeTaskNum(_ input: DescribeTranscodeTaskNumRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTranscodeTaskNumResponse {
        try await self.client.execute(action: "DescribeTranscodeTaskNum", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询转码任务数。
    @inlinable
    public func describeTranscodeTaskNum(startTime: String, endTime: String, pushDomains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTranscodeTaskNumResponse> {
        self.describeTranscodeTaskNum(.init(startTime: startTime, endTime: endTime, pushDomains: pushDomains), region: region, logger: logger, on: eventLoop)
    }

    /// 查询转码任务数。
    @inlinable
    public func describeTranscodeTaskNum(startTime: String, endTime: String, pushDomains: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTranscodeTaskNumResponse {
        try await self.describeTranscodeTaskNum(.init(startTime: startTime, endTime: endTime, pushDomains: pushDomains), region: region, logger: logger, on: eventLoop)
    }
}
