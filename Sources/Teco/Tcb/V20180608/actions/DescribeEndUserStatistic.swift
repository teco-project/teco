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

extension Tcb {
    /// DescribeEndUserStatistic请求参数结构体
    public struct DescribeEndUserStatisticRequest: TCRequestModel {
        /// 环境id
        public let envId: String

        public init(envId: String) {
            self.envId = envId
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
        }
    }

    /// DescribeEndUserStatistic返回参数结构体
    public struct DescribeEndUserStatisticResponse: TCResponseModel {
        /// 终端用户各平台统计
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let platformStatistics: [PlatformStatistic]?

        /// 终端用户总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case platformStatistics = "PlatformStatistics"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取终端用户分布
    ///
    /// 获取终端用户总量与平台分布情况
    @inlinable
    public func describeEndUserStatistic(_ input: DescribeEndUserStatisticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndUserStatisticResponse> {
        self.client.execute(action: "DescribeEndUserStatistic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取终端用户分布
    ///
    /// 获取终端用户总量与平台分布情况
    @inlinable
    public func describeEndUserStatistic(_ input: DescribeEndUserStatisticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEndUserStatisticResponse {
        try await self.client.execute(action: "DescribeEndUserStatistic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取终端用户分布
    ///
    /// 获取终端用户总量与平台分布情况
    @inlinable
    public func describeEndUserStatistic(envId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndUserStatisticResponse> {
        self.describeEndUserStatistic(.init(envId: envId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取终端用户分布
    ///
    /// 获取终端用户总量与平台分布情况
    @inlinable
    public func describeEndUserStatistic(envId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEndUserStatisticResponse {
        try await self.describeEndUserStatistic(.init(envId: envId), region: region, logger: logger, on: eventLoop)
    }
}
