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

extension Advisor {
    /// DescribeStrategies请求参数结构体
    public struct DescribeStrategiesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeStrategies返回参数结构体
    public struct DescribeStrategiesResponse: TCResponseModel {
        /// 评估项列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let strategies: [DescribeStrategie]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case strategies = "Strategies"
            case requestId = "RequestId"
        }
    }

    /// 查询评估项信息
    ///
    /// 用于查询评估项的信息
    @inlinable
    public func describeStrategies(_ input: DescribeStrategiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStrategiesResponse> {
        self.client.execute(action: "DescribeStrategies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询评估项信息
    ///
    /// 用于查询评估项的信息
    @inlinable
    public func describeStrategies(_ input: DescribeStrategiesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStrategiesResponse {
        try await self.client.execute(action: "DescribeStrategies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询评估项信息
    ///
    /// 用于查询评估项的信息
    @inlinable
    public func describeStrategies(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStrategiesResponse> {
        self.describeStrategies(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询评估项信息
    ///
    /// 用于查询评估项的信息
    @inlinable
    public func describeStrategies(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStrategiesResponse {
        try await self.describeStrategies(.init(), region: region, logger: logger, on: eventLoop)
    }
}
