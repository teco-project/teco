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

extension Mariadb {
    /// DescribeDBInstanceSpecs请求参数结构体
    public struct DescribeDBInstanceSpecsRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeDBInstanceSpecs返回参数结构体
    public struct DescribeDBInstanceSpecsResponse: TCResponse {
        /// 按机型分类的可售卖规格列表
        public let specs: [InstanceSpec]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case specs = "Specs"
            case requestId = "RequestId"
        }
    }

    /// 查询云数据库可售卖规格
    ///
    /// 本接口(DescribeDBInstanceSpecs)用于查询可创建的云数据库可售卖的规格配置。
    @inlinable
    public func describeDBInstanceSpecs(_ input: DescribeDBInstanceSpecsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceSpecsResponse> {
        self.client.execute(action: "DescribeDBInstanceSpecs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云数据库可售卖规格
    ///
    /// 本接口(DescribeDBInstanceSpecs)用于查询可创建的云数据库可售卖的规格配置。
    @inlinable
    public func describeDBInstanceSpecs(_ input: DescribeDBInstanceSpecsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceSpecsResponse {
        try await self.client.execute(action: "DescribeDBInstanceSpecs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云数据库可售卖规格
    ///
    /// 本接口(DescribeDBInstanceSpecs)用于查询可创建的云数据库可售卖的规格配置。
    @inlinable
    public func describeDBInstanceSpecs(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceSpecsResponse> {
        self.describeDBInstanceSpecs(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云数据库可售卖规格
    ///
    /// 本接口(DescribeDBInstanceSpecs)用于查询可创建的云数据库可售卖的规格配置。
    @inlinable
    public func describeDBInstanceSpecs(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceSpecsResponse {
        try await self.describeDBInstanceSpecs(.init(), region: region, logger: logger, on: eventLoop)
    }
}
