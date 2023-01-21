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

extension Cls {
    /// DescribePartitions请求参数结构体
    public struct DescribePartitionsRequest: TCRequestModel {
        /// 日志主题ID
        public let topicId: String

        public init(topicId: String) {
            self.topicId = topicId
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
        }
    }

    /// DescribePartitions返回参数结构体
    public struct DescribePartitionsResponse: TCResponseModel {
        /// 分区列表
        public let partitions: [PartitionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case partitions = "Partitions"
            case requestId = "RequestId"
        }
    }

    /// 获取分区列表
    ///
    /// 本接口用于获取主题分区列表。
    @inlinable
    public func describePartitions(_ input: DescribePartitionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePartitionsResponse> {
        self.client.execute(action: "DescribePartitions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取分区列表
    ///
    /// 本接口用于获取主题分区列表。
    @inlinable
    public func describePartitions(_ input: DescribePartitionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePartitionsResponse {
        try await self.client.execute(action: "DescribePartitions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取分区列表
    ///
    /// 本接口用于获取主题分区列表。
    @inlinable
    public func describePartitions(topicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePartitionsResponse> {
        self.describePartitions(DescribePartitionsRequest(topicId: topicId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取分区列表
    ///
    /// 本接口用于获取主题分区列表。
    @inlinable
    public func describePartitions(topicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePartitionsResponse {
        try await self.describePartitions(DescribePartitionsRequest(topicId: topicId), region: region, logger: logger, on: eventLoop)
    }
}
