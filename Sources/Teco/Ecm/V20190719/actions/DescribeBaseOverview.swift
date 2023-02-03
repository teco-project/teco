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

extension Ecm {
    /// DescribeBaseOverview请求参数结构体
    public struct DescribeBaseOverviewRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeBaseOverview返回参数结构体
    public struct DescribeBaseOverviewResponse: TCResponseModel {
        /// 模块数量，单位：个
        public let moduleNum: Int64

        /// 节点数量，单位：个
        public let nodeNum: Int64

        /// cpu核数，单位：个
        public let vcpuNum: Int64

        /// 内存大小，单位：G
        public let memoryNum: Int64

        /// 硬盘大小，单位：G
        public let storageNum: Int64

        /// 昨日网络峰值,单位：M
        public let networkNum: Int64

        /// 实例数量，单位：台
        public let instanceNum: Int64

        /// 运行中数量，单位：台
        public let runningNum: Int64

        /// 安全隔离数量，单位：台
        public let isolationNum: Int64

        /// 过期实例数量，单位：台
        public let expiredNum: Int64

        /// 即将过期实例数量，单位：台
        public let willExpireNum: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case moduleNum = "ModuleNum"
            case nodeNum = "NodeNum"
            case vcpuNum = "VcpuNum"
            case memoryNum = "MemoryNum"
            case storageNum = "StorageNum"
            case networkNum = "NetworkNum"
            case instanceNum = "InstanceNum"
            case runningNum = "RunningNum"
            case isolationNum = "IsolationNum"
            case expiredNum = "ExpiredNum"
            case willExpireNum = "WillExpireNum"
            case requestId = "RequestId"
        }
    }

    /// 获取概览页统计的基本数据
    @inlinable
    public func describeBaseOverview(_ input: DescribeBaseOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaseOverviewResponse> {
        self.client.execute(action: "DescribeBaseOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取概览页统计的基本数据
    @inlinable
    public func describeBaseOverview(_ input: DescribeBaseOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaseOverviewResponse {
        try await self.client.execute(action: "DescribeBaseOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取概览页统计的基本数据
    @inlinable
    public func describeBaseOverview(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaseOverviewResponse> {
        let input = DescribeBaseOverviewRequest()
        return self.client.execute(action: "DescribeBaseOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取概览页统计的基本数据
    @inlinable
    public func describeBaseOverview(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaseOverviewResponse {
        let input = DescribeBaseOverviewRequest()
        return try await self.client.execute(action: "DescribeBaseOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
