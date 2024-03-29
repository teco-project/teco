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

extension Youmall {
    /// DescribePersonArrivedMall请求参数结构体
    public struct DescribePersonArrivedMallRequest: TCRequest {
        /// 卖场编码
        public let mallId: String

        /// 客户编码
        public let personId: String

        /// 查询开始时间
        public let startTime: String

        /// 查询结束时间
        public let endTime: String

        public init(mallId: String, personId: String, startTime: String, endTime: String) {
            self.mallId = mallId
            self.personId = personId
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case mallId = "MallId"
            case personId = "PersonId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribePersonArrivedMall返回参数结构体
    public struct DescribePersonArrivedMallResponse: TCResponse {
        /// 卖场系统编码
        public let mallId: String

        /// 卖场用户编码
        public let mallCode: String

        /// 客户编码
        public let personId: String

        /// 到场轨迹
        public let arrivedMallSet: [ArrivedMallInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mallId = "MallId"
            case mallCode = "MallCode"
            case personId = "PersonId"
            case arrivedMallSet = "ArrivedMallSet"
            case requestId = "RequestId"
        }
    }

    /// 查询客户到场信息
    ///
    /// 输出开始时间到结束时间段内的进出场数据。不做按天聚合的情况下，每次进出场，产生一条进出场数据。
    @inlinable
    public func describePersonArrivedMall(_ input: DescribePersonArrivedMallRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonArrivedMallResponse> {
        self.client.execute(action: "DescribePersonArrivedMall", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户到场信息
    ///
    /// 输出开始时间到结束时间段内的进出场数据。不做按天聚合的情况下，每次进出场，产生一条进出场数据。
    @inlinable
    public func describePersonArrivedMall(_ input: DescribePersonArrivedMallRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonArrivedMallResponse {
        try await self.client.execute(action: "DescribePersonArrivedMall", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户到场信息
    ///
    /// 输出开始时间到结束时间段内的进出场数据。不做按天聚合的情况下，每次进出场，产生一条进出场数据。
    @inlinable
    public func describePersonArrivedMall(mallId: String, personId: String, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePersonArrivedMallResponse> {
        self.describePersonArrivedMall(.init(mallId: mallId, personId: personId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户到场信息
    ///
    /// 输出开始时间到结束时间段内的进出场数据。不做按天聚合的情况下，每次进出场，产生一条进出场数据。
    @inlinable
    public func describePersonArrivedMall(mallId: String, personId: String, startTime: String, endTime: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePersonArrivedMallResponse {
        try await self.describePersonArrivedMall(.init(mallId: mallId, personId: personId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
