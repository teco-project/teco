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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Teo {
    /// DescribeAvailablePlans请求参数结构体
    public struct DescribeAvailablePlansRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeAvailablePlans返回参数结构体
    public struct DescribeAvailablePlansResponse: TCResponseModel {
        /// 当前账户可购买套餐类型及相关信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let planInfo: [PlanInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case planInfo = "PlanInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询当前账户可购买套餐信息列表
    ///
    /// 查询当前账户可用套餐信息列表
    @inlinable
    public func describeAvailablePlans(_ input: DescribeAvailablePlansRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailablePlansResponse> {
        self.client.execute(action: "DescribeAvailablePlans", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询当前账户可购买套餐信息列表
    ///
    /// 查询当前账户可用套餐信息列表
    @inlinable
    public func describeAvailablePlans(_ input: DescribeAvailablePlansRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailablePlansResponse {
        try await self.client.execute(action: "DescribeAvailablePlans", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询当前账户可购买套餐信息列表
    ///
    /// 查询当前账户可用套餐信息列表
    @inlinable
    public func describeAvailablePlans(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailablePlansResponse> {
        self.describeAvailablePlans(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询当前账户可购买套餐信息列表
    ///
    /// 查询当前账户可用套餐信息列表
    @inlinable
    public func describeAvailablePlans(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailablePlansResponse {
        try await self.describeAvailablePlans(.init(), region: region, logger: logger, on: eventLoop)
    }
}
