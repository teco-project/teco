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

extension Csip {
    /// DescribeRiskCenterServerRiskList请求参数结构体
    public struct DescribeRiskCenterServerRiskListRequest: TCRequest {
        /// 过滤内容
        public let filter: Filter?

        public init(filter: Filter? = nil) {
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
        }
    }

    /// DescribeRiskCenterServerRiskList返回参数结构体
    public struct DescribeRiskCenterServerRiskListResponse: TCResponse {
        /// 总条数
        public let totalCount: Int64

        /// 风险服务列表
        public let data: [ServerRisk]

        /// 资产类型枚举
        public let instanceTypeLists: [FilterDataObject]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case instanceTypeLists = "InstanceTypeLists"
            case requestId = "RequestId"
        }
    }

    /// 获取风险服务列表
    @inlinable
    public func describeRiskCenterServerRiskList(_ input: DescribeRiskCenterServerRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskCenterServerRiskListResponse> {
        self.client.execute(action: "DescribeRiskCenterServerRiskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取风险服务列表
    @inlinable
    public func describeRiskCenterServerRiskList(_ input: DescribeRiskCenterServerRiskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskCenterServerRiskListResponse {
        try await self.client.execute(action: "DescribeRiskCenterServerRiskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取风险服务列表
    @inlinable
    public func describeRiskCenterServerRiskList(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskCenterServerRiskListResponse> {
        self.describeRiskCenterServerRiskList(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }

    /// 获取风险服务列表
    @inlinable
    public func describeRiskCenterServerRiskList(filter: Filter? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskCenterServerRiskListResponse {
        try await self.describeRiskCenterServerRiskList(.init(filter: filter), region: region, logger: logger, on: eventLoop)
    }
}
