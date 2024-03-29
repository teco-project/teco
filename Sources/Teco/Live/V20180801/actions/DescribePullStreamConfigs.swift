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

extension Live {
    /// DescribePullStreamConfigs请求参数结构体
    public struct DescribePullStreamConfigsRequest: TCRequest {
        /// 配置 ID。
        /// 获取途径：从 CreatePullStreamConfig 接口返回值获取。
        public let configId: String?

        public init(configId: String? = nil) {
            self.configId = configId
        }

        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
        }
    }

    /// DescribePullStreamConfigs返回参数结构体
    public struct DescribePullStreamConfigsResponse: TCResponse {
        /// 拉流配置。
        public let pullStreamConfigs: [PullStreamConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pullStreamConfigs = "PullStreamConfigs"
            case requestId = "RequestId"
        }
    }

    /// 查询拉流配置(该接口已下线,请使用新接口 DescribeLivePullStreamTasks)
    ///
    /// 查询直播拉流配置。该接口已下线,请使用新接口 DescribeLivePullStreamTasks。
    @inlinable
    public func describePullStreamConfigs(_ input: DescribePullStreamConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePullStreamConfigsResponse> {
        self.client.execute(action: "DescribePullStreamConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询拉流配置(该接口已下线,请使用新接口 DescribeLivePullStreamTasks)
    ///
    /// 查询直播拉流配置。该接口已下线,请使用新接口 DescribeLivePullStreamTasks。
    @inlinable
    public func describePullStreamConfigs(_ input: DescribePullStreamConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePullStreamConfigsResponse {
        try await self.client.execute(action: "DescribePullStreamConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询拉流配置(该接口已下线,请使用新接口 DescribeLivePullStreamTasks)
    ///
    /// 查询直播拉流配置。该接口已下线,请使用新接口 DescribeLivePullStreamTasks。
    @inlinable
    public func describePullStreamConfigs(configId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePullStreamConfigsResponse> {
        self.describePullStreamConfigs(.init(configId: configId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询拉流配置(该接口已下线,请使用新接口 DescribeLivePullStreamTasks)
    ///
    /// 查询直播拉流配置。该接口已下线,请使用新接口 DescribeLivePullStreamTasks。
    @inlinable
    public func describePullStreamConfigs(configId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePullStreamConfigsResponse {
        try await self.describePullStreamConfigs(.init(configId: configId), region: region, logger: logger, on: eventLoop)
    }
}
