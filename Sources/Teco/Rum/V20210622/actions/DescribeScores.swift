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

extension Rum {
    /// DescribeScores请求参数结构体
    public struct DescribeScoresRequest: TCRequestModel {
        /// 结束时间
        public let endTime: String

        /// 开始时间
        public let startTime: String

        /// 项目ID
        public let id: Int64?

        /// 该参数已废弃
        public let isDemo: Int64?

        public init(endTime: String, startTime: String, id: Int64? = nil, isDemo: Int64? = nil) {
            self.endTime = endTime
            self.startTime = startTime
            self.id = id
            self.isDemo = isDemo
        }

        enum CodingKeys: String, CodingKey {
            case endTime = "EndTime"
            case startTime = "StartTime"
            case id = "ID"
            case isDemo = "IsDemo"
        }
    }

    /// DescribeScores返回参数结构体
    public struct DescribeScoresResponse: TCResponseModel {
        /// 数组
        public let scoreSet: [ScoreInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case scoreSet = "ScoreSet"
            case requestId = "RequestId"
        }
    }

    /// 获取首页分数列表
    @inlinable
    public func describeScores(_ input: DescribeScoresRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScoresResponse> {
        self.client.execute(action: "DescribeScores", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取首页分数列表
    @inlinable
    public func describeScores(_ input: DescribeScoresRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScoresResponse {
        try await self.client.execute(action: "DescribeScores", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取首页分数列表
    @inlinable
    public func describeScores(endTime: String, startTime: String, id: Int64? = nil, isDemo: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeScoresResponse> {
        self.describeScores(.init(endTime: endTime, startTime: startTime, id: id, isDemo: isDemo), region: region, logger: logger, on: eventLoop)
    }

    /// 获取首页分数列表
    @inlinable
    public func describeScores(endTime: String, startTime: String, id: Int64? = nil, isDemo: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeScoresResponse {
        try await self.describeScores(.init(endTime: endTime, startTime: startTime, id: id, isDemo: isDemo), region: region, logger: logger, on: eventLoop)
    }
}
