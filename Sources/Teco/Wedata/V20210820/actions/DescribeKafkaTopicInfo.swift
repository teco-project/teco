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
    /// DescribeKafkaTopicInfo请求参数结构体
    public struct DescribeKafkaTopicInfoRequest: TCRequest {
        /// 数据源id
        public let datasourceId: String

        /// 数据源类型
        public let type: String

        public init(datasourceId: String, type: String) {
            self.datasourceId = datasourceId
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case datasourceId = "DatasourceId"
            case type = "Type"
        }
    }

    /// DescribeKafkaTopicInfo返回参数结构体
    public struct DescribeKafkaTopicInfoResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 获取kafka的topic信息
    @inlinable @discardableResult
    public func describeKafkaTopicInfo(_ input: DescribeKafkaTopicInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKafkaTopicInfoResponse> {
        self.client.execute(action: "DescribeKafkaTopicInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取kafka的topic信息
    @inlinable @discardableResult
    public func describeKafkaTopicInfo(_ input: DescribeKafkaTopicInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKafkaTopicInfoResponse {
        try await self.client.execute(action: "DescribeKafkaTopicInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取kafka的topic信息
    @inlinable @discardableResult
    public func describeKafkaTopicInfo(datasourceId: String, type: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeKafkaTopicInfoResponse> {
        self.describeKafkaTopicInfo(.init(datasourceId: datasourceId, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 获取kafka的topic信息
    @inlinable @discardableResult
    public func describeKafkaTopicInfo(datasourceId: String, type: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeKafkaTopicInfoResponse {
        try await self.describeKafkaTopicInfo(.init(datasourceId: datasourceId, type: type), region: region, logger: logger, on: eventLoop)
    }
}
