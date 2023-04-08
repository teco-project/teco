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

import TecoCore

extension Cwp {
    /// DescribeHistoryService请求参数结构体
    public struct DescribeHistoryServiceRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeHistoryService返回参数结构体
    public struct DescribeHistoryServiceResponse: TCResponseModel {
        /// 1 可购买 2 只能升降配 3 只能跳到续费管理页
        public let buyStatus: UInt64

        /// 用户已购容量 单位 G
        public let inquireNum: UInt64

        /// 到期时间
        public let endTime: String

        /// 是否自动续费,0 初始值, 1 开通 2 没开通
        public let isAutoOpenRenew: UInt64

        /// 资源ID
        public let resourceId: String

        /// 0 没开通 1 正常 2隔离 3销毁
        public let status: UInt64

        /// 开始时间
        public let startTime: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case buyStatus = "BuyStatus"
            case inquireNum = "InquireNum"
            case endTime = "EndTime"
            case isAutoOpenRenew = "IsAutoOpenRenew"
            case resourceId = "ResourceId"
            case status = "Status"
            case startTime = "StartTime"
            case requestId = "RequestId"
        }
    }

    /// 查询日志检索服务信息
    @inlinable
    public func describeHistoryService(_ input: DescribeHistoryServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHistoryServiceResponse> {
        self.client.execute(action: "DescribeHistoryService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询日志检索服务信息
    @inlinable
    public func describeHistoryService(_ input: DescribeHistoryServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHistoryServiceResponse {
        try await self.client.execute(action: "DescribeHistoryService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询日志检索服务信息
    @inlinable
    public func describeHistoryService(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHistoryServiceResponse> {
        self.describeHistoryService(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询日志检索服务信息
    @inlinable
    public func describeHistoryService(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHistoryServiceResponse {
        try await self.describeHistoryService(.init(), region: region, logger: logger, on: eventLoop)
    }
}
