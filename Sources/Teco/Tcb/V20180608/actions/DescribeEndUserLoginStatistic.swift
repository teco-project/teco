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
    /// DescribeEndUserLoginStatistic请求参数结构体
    public struct DescribeEndUserLoginStatisticRequest: TCRequestModel {
        /// 环境id
        public let envId: String

        /// 终端用户来源
        /// - qcloud
        /// - miniapp
        public let source: String?

        public init(envId: String, source: String? = nil) {
            self.envId = envId
            self.source = source
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case source = "Source"
        }
    }

    /// DescribeEndUserLoginStatistic返回参数结构体
    public struct DescribeEndUserLoginStatisticResponse: TCResponseModel {
        /// 环境终端用户新增与登录统计
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let loginStatistics: [LoginStatistic]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case loginStatistics = "LoginStatistics"
            case requestId = "RequestId"
        }
    }

    /// 获取终端用户新增与登录信息
    ///
    /// 获取环境终端用户新增与登录信息
    @inlinable
    public func describeEndUserLoginStatistic(_ input: DescribeEndUserLoginStatisticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndUserLoginStatisticResponse> {
        self.client.execute(action: "DescribeEndUserLoginStatistic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取终端用户新增与登录信息
    ///
    /// 获取环境终端用户新增与登录信息
    @inlinable
    public func describeEndUserLoginStatistic(_ input: DescribeEndUserLoginStatisticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEndUserLoginStatisticResponse {
        try await self.client.execute(action: "DescribeEndUserLoginStatistic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取终端用户新增与登录信息
    ///
    /// 获取环境终端用户新增与登录信息
    @inlinable
    public func describeEndUserLoginStatistic(envId: String, source: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndUserLoginStatisticResponse> {
        self.describeEndUserLoginStatistic(.init(envId: envId, source: source), region: region, logger: logger, on: eventLoop)
    }

    /// 获取终端用户新增与登录信息
    ///
    /// 获取环境终端用户新增与登录信息
    @inlinable
    public func describeEndUserLoginStatistic(envId: String, source: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEndUserLoginStatisticResponse {
        try await self.describeEndUserLoginStatistic(.init(envId: envId, source: source), region: region, logger: logger, on: eventLoop)
    }
}
