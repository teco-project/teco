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

extension Cwp {
    /// DescribeStrategyExist请求参数结构体
    public struct DescribeStrategyExistRequest: TCRequest {
        /// 策略名
        public let strategyName: String

        public init(strategyName: String) {
            self.strategyName = strategyName
        }

        enum CodingKeys: String, CodingKey {
            case strategyName = "StrategyName"
        }
    }

    /// DescribeStrategyExist返回参数结构体
    public struct DescribeStrategyExistResponse: TCResponse {
        /// 策略是否存在, 1是 0否
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ifExist: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ifExist = "IfExist"
            case requestId = "RequestId"
        }
    }

    /// 根据策略名查询策略是否存在
    @inlinable
    public func describeStrategyExist(_ input: DescribeStrategyExistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStrategyExistResponse> {
        self.client.execute(action: "DescribeStrategyExist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据策略名查询策略是否存在
    @inlinable
    public func describeStrategyExist(_ input: DescribeStrategyExistRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStrategyExistResponse {
        try await self.client.execute(action: "DescribeStrategyExist", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据策略名查询策略是否存在
    @inlinable
    public func describeStrategyExist(strategyName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStrategyExistResponse> {
        self.describeStrategyExist(.init(strategyName: strategyName), region: region, logger: logger, on: eventLoop)
    }

    /// 根据策略名查询策略是否存在
    @inlinable
    public func describeStrategyExist(strategyName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStrategyExistResponse {
        try await self.describeStrategyExist(.init(strategyName: strategyName), region: region, logger: logger, on: eventLoop)
    }
}
