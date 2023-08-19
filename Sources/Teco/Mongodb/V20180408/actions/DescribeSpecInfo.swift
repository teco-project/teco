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

extension Mongodb {
    /// DescribeSpecInfo请求参数结构体
    public struct DescribeSpecInfoRequest: TCRequest {
        /// 可用区
        public let zone: String?

        public init(zone: String? = nil) {
            self.zone = zone
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
        }
    }

    /// DescribeSpecInfo返回参数结构体
    public struct DescribeSpecInfoResponse: TCResponse {
        /// 实例售卖规格信息列表
        public let specInfoList: [SpecificationInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case specInfoList = "SpecInfoList"
            case requestId = "RequestId"
        }
    }

    /// 查询云数据库的售卖规格
    ///
    /// 本接口(DescribeSpecInfo)用于查询实例的售卖规格。
    @inlinable
    public func describeSpecInfo(_ input: DescribeSpecInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpecInfoResponse> {
        self.client.execute(action: "DescribeSpecInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云数据库的售卖规格
    ///
    /// 本接口(DescribeSpecInfo)用于查询实例的售卖规格。
    @inlinable
    public func describeSpecInfo(_ input: DescribeSpecInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpecInfoResponse {
        try await self.client.execute(action: "DescribeSpecInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云数据库的售卖规格
    ///
    /// 本接口(DescribeSpecInfo)用于查询实例的售卖规格。
    @inlinable
    public func describeSpecInfo(zone: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpecInfoResponse> {
        self.describeSpecInfo(.init(zone: zone), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云数据库的售卖规格
    ///
    /// 本接口(DescribeSpecInfo)用于查询实例的售卖规格。
    @inlinable
    public func describeSpecInfo(zone: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpecInfoResponse {
        try await self.describeSpecInfo(.init(zone: zone), region: region, logger: logger, on: eventLoop)
    }
}
