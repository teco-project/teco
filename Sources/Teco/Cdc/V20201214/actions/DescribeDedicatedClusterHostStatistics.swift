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

extension Cdc {
    /// DescribeDedicatedClusterHostStatistics请求参数结构体
    public struct DescribeDedicatedClusterHostStatisticsRequest: TCRequestModel {
        /// 查询的专用集群id
        public let dedicatedClusterId: String

        public init(dedicatedClusterId: String) {
            self.dedicatedClusterId = dedicatedClusterId
        }

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterId = "DedicatedClusterId"
        }
    }

    /// DescribeDedicatedClusterHostStatistics返回参数结构体
    public struct DescribeDedicatedClusterHostStatisticsResponse: TCResponseModel {
        /// 该集群内宿主机的统计信息列表
        public let hostStatisticSet: [HostStatistic]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hostStatisticSet = "HostStatisticSet"
            case requestId = "RequestId"
        }
    }

    /// 查询专用集群内宿主机的统计信息
    @inlinable
    public func describeDedicatedClusterHostStatistics(_ input: DescribeDedicatedClusterHostStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDedicatedClusterHostStatisticsResponse> {
        self.client.execute(action: "DescribeDedicatedClusterHostStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专用集群内宿主机的统计信息
    @inlinable
    public func describeDedicatedClusterHostStatistics(_ input: DescribeDedicatedClusterHostStatisticsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterHostStatisticsResponse {
        try await self.client.execute(action: "DescribeDedicatedClusterHostStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询专用集群内宿主机的统计信息
    @inlinable
    public func describeDedicatedClusterHostStatistics(dedicatedClusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDedicatedClusterHostStatisticsResponse> {
        let input = DescribeDedicatedClusterHostStatisticsRequest(dedicatedClusterId: dedicatedClusterId)
        return self.client.execute(action: "DescribeDedicatedClusterHostStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询专用集群内宿主机的统计信息
    @inlinable
    public func describeDedicatedClusterHostStatistics(dedicatedClusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterHostStatisticsResponse {
        let input = DescribeDedicatedClusterHostStatisticsRequest(dedicatedClusterId: dedicatedClusterId)
        return try await self.client.execute(action: "DescribeDedicatedClusterHostStatistics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
