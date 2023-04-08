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

extension Tem {
    /// DescribeConfigData请求参数结构体
    public struct DescribeConfigDataRequest: TCRequestModel {
        /// 环境 ID
        public let environmentId: String

        /// 配置名
        public let name: String

        /// 来源渠道
        public let sourceChannel: Int64?

        public init(environmentId: String, name: String, sourceChannel: Int64? = nil) {
            self.environmentId = environmentId
            self.name = name
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case name = "Name"
            case sourceChannel = "SourceChannel"
        }
    }

    /// DescribeConfigData返回参数结构体
    public struct DescribeConfigDataResponse: TCResponseModel {
        /// 配置
        public let result: ConfigData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询配置详情
    @inlinable
    public func describeConfigData(_ input: DescribeConfigDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigDataResponse> {
        self.client.execute(action: "DescribeConfigData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询配置详情
    @inlinable
    public func describeConfigData(_ input: DescribeConfigDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigDataResponse {
        try await self.client.execute(action: "DescribeConfigData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询配置详情
    @inlinable
    public func describeConfigData(environmentId: String, name: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigDataResponse> {
        self.describeConfigData(.init(environmentId: environmentId, name: name, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 查询配置详情
    @inlinable
    public func describeConfigData(environmentId: String, name: String, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigDataResponse {
        try await self.describeConfigData(.init(environmentId: environmentId, name: name, sourceChannel: sourceChannel), region: region, logger: logger, on: eventLoop)
    }
}
