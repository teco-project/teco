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

extension Cfw {
    /// DescribeNatFwInstancesInfo请求参数结构体
    public struct DescribeNatFwInstancesInfoRequest: TCRequestModel {
        /// 获取实例列表过滤字段
        public let filter: [NatFwFilter]?

        /// 第几页
        public let offset: Int64?

        /// 每页长度
        public let limit: Int64?

        public init(filter: [NatFwFilter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filter = filter
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeNatFwInstancesInfo返回参数结构体
    public struct DescribeNatFwInstancesInfoResponse: TCResponseModel {
        /// 实例卡片信息数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let natinsLst: [NatInstanceInfo]?

        /// nat 防火墙个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case natinsLst = "NatinsLst"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取租户所有NAT实例卡片信息
    ///
    /// GetNatInstance 获取租户所有NAT实例及实例卡片信息
    @inlinable
    public func describeNatFwInstancesInfo(_ input: DescribeNatFwInstancesInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatFwInstancesInfoResponse> {
        self.client.execute(action: "DescribeNatFwInstancesInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取租户所有NAT实例卡片信息
    ///
    /// GetNatInstance 获取租户所有NAT实例及实例卡片信息
    @inlinable
    public func describeNatFwInstancesInfo(_ input: DescribeNatFwInstancesInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatFwInstancesInfoResponse {
        try await self.client.execute(action: "DescribeNatFwInstancesInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取租户所有NAT实例卡片信息
    ///
    /// GetNatInstance 获取租户所有NAT实例及实例卡片信息
    @inlinable
    public func describeNatFwInstancesInfo(filter: [NatFwFilter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatFwInstancesInfoResponse> {
        self.describeNatFwInstancesInfo(DescribeNatFwInstancesInfoRequest(filter: filter, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取租户所有NAT实例卡片信息
    ///
    /// GetNatInstance 获取租户所有NAT实例及实例卡片信息
    @inlinable
    public func describeNatFwInstancesInfo(filter: [NatFwFilter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatFwInstancesInfoResponse {
        try await self.describeNatFwInstancesInfo(DescribeNatFwInstancesInfoRequest(filter: filter, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
