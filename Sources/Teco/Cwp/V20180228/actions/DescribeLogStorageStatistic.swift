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

extension Cwp {
    /// DescribeLogStorageStatistic请求参数结构体
    public struct DescribeLogStorageStatisticRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeLogStorageStatistic返回参数结构体
    public struct DescribeLogStorageStatisticResponse: TCResponseModel {
        /// 总容量（单位：GB）
        public let totalSize: UInt64

        /// 已使用容量（单位：GB）
        public let usedSize: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalSize = "TotalSize"
            case usedSize = "UsedSize"
            case requestId = "RequestId"
        }
    }

    /// 获取日志检索容量使用统计
    @inlinable
    public func describeLogStorageStatistic(_ input: DescribeLogStorageStatisticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogStorageStatisticResponse> {
        self.client.execute(action: "DescribeLogStorageStatistic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取日志检索容量使用统计
    @inlinable
    public func describeLogStorageStatistic(_ input: DescribeLogStorageStatisticRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogStorageStatisticResponse {
        try await self.client.execute(action: "DescribeLogStorageStatistic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取日志检索容量使用统计
    @inlinable
    public func describeLogStorageStatistic(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLogStorageStatisticResponse> {
        self.describeLogStorageStatistic(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取日志检索容量使用统计
    @inlinable
    public func describeLogStorageStatistic(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLogStorageStatisticResponse {
        try await self.describeLogStorageStatistic(.init(), region: region, logger: logger, on: eventLoop)
    }
}
