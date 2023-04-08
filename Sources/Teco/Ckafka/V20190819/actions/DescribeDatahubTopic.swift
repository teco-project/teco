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

import TecoCore

extension Ckafka {
    /// DescribeDatahubTopic请求参数结构体
    public struct DescribeDatahubTopicRequest: TCRequestModel {
        /// 名称
        public let name: String

        public init(name: String) {
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    /// DescribeDatahubTopic返回参数结构体
    public struct DescribeDatahubTopicResponse: TCResponseModel {
        /// 返回的结果对象
        public let result: DescribeDatahubTopicResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取Datahub主题属性
    @inlinable
    public func describeDatahubTopic(_ input: DescribeDatahubTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatahubTopicResponse> {
        self.client.execute(action: "DescribeDatahubTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Datahub主题属性
    @inlinable
    public func describeDatahubTopic(_ input: DescribeDatahubTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatahubTopicResponse {
        try await self.client.execute(action: "DescribeDatahubTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Datahub主题属性
    @inlinable
    public func describeDatahubTopic(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatahubTopicResponse> {
        self.describeDatahubTopic(.init(name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 获取Datahub主题属性
    @inlinable
    public func describeDatahubTopic(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatahubTopicResponse {
        try await self.describeDatahubTopic(.init(name: name), region: region, logger: logger, on: eventLoop)
    }
}
