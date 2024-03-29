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

extension Sslpod {
    /// DescribeDashboard请求参数结构体
    public struct DescribeDashboardRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeDashboard返回参数结构体
    public struct DescribeDashboardResponse: TCResponse {
        /// dashboard面板数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DashboardResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 仪表盘数据
    ///
    /// 获取仪表盘数据
    @inlinable
    public func describeDashboard(_ input: DescribeDashboardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDashboardResponse> {
        self.client.execute(action: "DescribeDashboard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 仪表盘数据
    ///
    /// 获取仪表盘数据
    @inlinable
    public func describeDashboard(_ input: DescribeDashboardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDashboardResponse {
        try await self.client.execute(action: "DescribeDashboard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 仪表盘数据
    ///
    /// 获取仪表盘数据
    @inlinable
    public func describeDashboard(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDashboardResponse> {
        self.describeDashboard(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 仪表盘数据
    ///
    /// 获取仪表盘数据
    @inlinable
    public func describeDashboard(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDashboardResponse {
        try await self.describeDashboard(.init(), region: region, logger: logger, on: eventLoop)
    }
}
