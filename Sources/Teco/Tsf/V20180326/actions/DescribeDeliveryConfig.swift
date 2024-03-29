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

extension Tsf {
    /// DescribeDeliveryConfig请求参数结构体
    public struct DescribeDeliveryConfigRequest: TCRequest {
        /// 投递配置id
        public let configId: String

        public init(configId: String) {
            self.configId = configId
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
        }
    }

    /// DescribeDeliveryConfig返回参数结构体
    public struct DescribeDeliveryConfigResponse: TCResponse {
        /// 投递kafka配置
        public let result: KafkaDeliveryConfig

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取单个投递项配置
    ///
    /// 获取单个投递项配置信息
    @inlinable
    public func describeDeliveryConfig(_ input: DescribeDeliveryConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeliveryConfigResponse> {
        self.client.execute(action: "DescribeDeliveryConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单个投递项配置
    ///
    /// 获取单个投递项配置信息
    @inlinable
    public func describeDeliveryConfig(_ input: DescribeDeliveryConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeliveryConfigResponse {
        try await self.client.execute(action: "DescribeDeliveryConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单个投递项配置
    ///
    /// 获取单个投递项配置信息
    @inlinable
    public func describeDeliveryConfig(configId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeliveryConfigResponse> {
        self.describeDeliveryConfig(.init(configId: configId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单个投递项配置
    ///
    /// 获取单个投递项配置信息
    @inlinable
    public func describeDeliveryConfig(configId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeliveryConfigResponse {
        try await self.describeDeliveryConfig(.init(configId: configId), region: region, logger: logger, on: eventLoop)
    }
}
