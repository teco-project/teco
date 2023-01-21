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

extension Cds {
    /// DescribeDbauditInstanceType请求参数结构体
    public struct DescribeDbauditInstanceTypeRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeDbauditInstanceType返回参数结构体
    public struct DescribeDbauditInstanceTypeResponse: TCResponseModel {
        /// 数据安全审计产品规格信息列表
        public let dbauditTypesSet: [DbauditTypesInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dbauditTypesSet = "DbauditTypesSet"
            case requestId = "RequestId"
        }
    }

    /// 获取产品规格信息列表
    ///
    /// 本接口 (DescribeDbauditInstanceType) 用于查询可售卖的产品规格列表。
    @inlinable
    public func describeDbauditInstanceType(_ input: DescribeDbauditInstanceTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDbauditInstanceTypeResponse> {
        self.client.execute(action: "DescribeDbauditInstanceType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取产品规格信息列表
    ///
    /// 本接口 (DescribeDbauditInstanceType) 用于查询可售卖的产品规格列表。
    @inlinable
    public func describeDbauditInstanceType(_ input: DescribeDbauditInstanceTypeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDbauditInstanceTypeResponse {
        try await self.client.execute(action: "DescribeDbauditInstanceType", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取产品规格信息列表
    ///
    /// 本接口 (DescribeDbauditInstanceType) 用于查询可售卖的产品规格列表。
    @inlinable
    public func describeDbauditInstanceType(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDbauditInstanceTypeResponse> {
        self.describeDbauditInstanceType(DescribeDbauditInstanceTypeRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取产品规格信息列表
    ///
    /// 本接口 (DescribeDbauditInstanceType) 用于查询可售卖的产品规格列表。
    @inlinable
    public func describeDbauditInstanceType(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDbauditInstanceTypeResponse {
        try await self.describeDbauditInstanceType(DescribeDbauditInstanceTypeRequest(), region: region, logger: logger, on: eventLoop)
    }
}
