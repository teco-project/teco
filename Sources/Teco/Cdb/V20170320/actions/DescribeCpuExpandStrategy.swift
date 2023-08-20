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

extension Cdb {
    /// DescribeCpuExpandStrategy请求参数结构体
    public struct DescribeCpuExpandStrategyRequest: TCRequest {
        /// 实例 ID 。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeCpuExpandStrategy返回参数结构体
    public struct DescribeCpuExpandStrategyResponse: TCResponse {
        /// 策略类型。可选值 auto、manual。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?

        /// 手动扩容的 CPU 。Type为 manual 时有效。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expandCpu: String?

        /// 自动扩容策略。Type 为 auto 时有效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let autoStrategy: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case expandCpu = "ExpandCpu"
            case autoStrategy = "AutoStrategy"
            case requestId = "RequestId"
        }
    }

    /// 查询实例的 CPU 弹性扩容策略
    ///
    /// 通过该 API 可以查询实例的 CPU 弹性扩容策略
    @inlinable
    public func describeCpuExpandStrategy(_ input: DescribeCpuExpandStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCpuExpandStrategyResponse> {
        self.client.execute(action: "DescribeCpuExpandStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例的 CPU 弹性扩容策略
    ///
    /// 通过该 API 可以查询实例的 CPU 弹性扩容策略
    @inlinable
    public func describeCpuExpandStrategy(_ input: DescribeCpuExpandStrategyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCpuExpandStrategyResponse {
        try await self.client.execute(action: "DescribeCpuExpandStrategy", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例的 CPU 弹性扩容策略
    ///
    /// 通过该 API 可以查询实例的 CPU 弹性扩容策略
    @inlinable
    public func describeCpuExpandStrategy(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCpuExpandStrategyResponse> {
        self.describeCpuExpandStrategy(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例的 CPU 弹性扩容策略
    ///
    /// 通过该 API 可以查询实例的 CPU 弹性扩容策略
    @inlinable
    public func describeCpuExpandStrategy(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCpuExpandStrategyResponse {
        try await self.describeCpuExpandStrategy(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}