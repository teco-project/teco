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

extension Tcb {
    /// DescribeEnvs请求参数结构体
    public struct DescribeEnvsRequest: TCRequest {
        /// 环境ID，如果传了这个参数则只返回该环境的相关信息
        public let envId: String?

        /// 指定Channels字段为可见渠道列表或不可见渠道列表
        /// 如只想获取渠道A的环境 就填写IsVisible= true,Channels = ["A"], 过滤渠道A拉取其他渠道环境时填写IsVisible= false,Channels = ["A"]
        public let isVisible: Bool?

        /// 渠道列表，代表可见或不可见渠道由IsVisible参数指定
        public let channels: [String]?

        public init(envId: String? = nil, isVisible: Bool? = nil, channels: [String]? = nil) {
            self.envId = envId
            self.isVisible = isVisible
            self.channels = channels
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case isVisible = "IsVisible"
            case channels = "Channels"
        }
    }

    /// DescribeEnvs返回参数结构体
    public struct DescribeEnvsResponse: TCResponse {
        /// 环境信息列表
        public let envList: [EnvInfo]

        /// 环境个数
        public let total: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case envList = "EnvList"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取环境列表
    ///
    /// 获取环境列表，含环境下的各个资源信息。尤其是各资源的唯一标识，是请求各资源的关键参数
    @inlinable
    public func describeEnvs(_ input: DescribeEnvsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvsResponse> {
        self.client.execute(action: "DescribeEnvs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取环境列表
    ///
    /// 获取环境列表，含环境下的各个资源信息。尤其是各资源的唯一标识，是请求各资源的关键参数
    @inlinable
    public func describeEnvs(_ input: DescribeEnvsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvsResponse {
        try await self.client.execute(action: "DescribeEnvs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取环境列表
    ///
    /// 获取环境列表，含环境下的各个资源信息。尤其是各资源的唯一标识，是请求各资源的关键参数
    @inlinable
    public func describeEnvs(envId: String? = nil, isVisible: Bool? = nil, channels: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEnvsResponse> {
        self.describeEnvs(.init(envId: envId, isVisible: isVisible, channels: channels), region: region, logger: logger, on: eventLoop)
    }

    /// 获取环境列表
    ///
    /// 获取环境列表，含环境下的各个资源信息。尤其是各资源的唯一标识，是请求各资源的关键参数
    @inlinable
    public func describeEnvs(envId: String? = nil, isVisible: Bool? = nil, channels: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEnvsResponse {
        try await self.describeEnvs(.init(envId: envId, isVisible: isVisible, channels: channels), region: region, logger: logger, on: eventLoop)
    }
}
