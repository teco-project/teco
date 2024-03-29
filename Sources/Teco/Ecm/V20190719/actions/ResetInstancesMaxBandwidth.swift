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

extension Ecm {
    /// ResetInstancesMaxBandwidth请求参数结构体
    public struct ResetInstancesMaxBandwidthRequest: TCRequest {
        /// 待重置带宽上限的实例ID列表。在单次请求的过程中，单个region下的请求实例数上限为100。
        public let instanceIdSet: [String]

        /// 修改后的最大出带宽上限。
        public let maxBandwidthOut: Int64

        /// 修改后的最大入带宽上限。
        public let maxBandwidthIn: Int64?

        public init(instanceIdSet: [String], maxBandwidthOut: Int64, maxBandwidthIn: Int64? = nil) {
            self.instanceIdSet = instanceIdSet
            self.maxBandwidthOut = maxBandwidthOut
            self.maxBandwidthIn = maxBandwidthIn
        }

        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
            case maxBandwidthOut = "MaxBandwidthOut"
            case maxBandwidthIn = "MaxBandwidthIn"
        }
    }

    /// ResetInstancesMaxBandwidth返回参数结构体
    public struct ResetInstancesMaxBandwidthResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置实例的最大带宽上限
    ///
    /// 重置实例的最大带宽上限。
    @inlinable @discardableResult
    public func resetInstancesMaxBandwidth(_ input: ResetInstancesMaxBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetInstancesMaxBandwidthResponse> {
        self.client.execute(action: "ResetInstancesMaxBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置实例的最大带宽上限
    ///
    /// 重置实例的最大带宽上限。
    @inlinable @discardableResult
    public func resetInstancesMaxBandwidth(_ input: ResetInstancesMaxBandwidthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetInstancesMaxBandwidthResponse {
        try await self.client.execute(action: "ResetInstancesMaxBandwidth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置实例的最大带宽上限
    ///
    /// 重置实例的最大带宽上限。
    @inlinable @discardableResult
    public func resetInstancesMaxBandwidth(instanceIdSet: [String], maxBandwidthOut: Int64, maxBandwidthIn: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetInstancesMaxBandwidthResponse> {
        self.resetInstancesMaxBandwidth(.init(instanceIdSet: instanceIdSet, maxBandwidthOut: maxBandwidthOut, maxBandwidthIn: maxBandwidthIn), region: region, logger: logger, on: eventLoop)
    }

    /// 重置实例的最大带宽上限
    ///
    /// 重置实例的最大带宽上限。
    @inlinable @discardableResult
    public func resetInstancesMaxBandwidth(instanceIdSet: [String], maxBandwidthOut: Int64, maxBandwidthIn: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetInstancesMaxBandwidthResponse {
        try await self.resetInstancesMaxBandwidth(.init(instanceIdSet: instanceIdSet, maxBandwidthOut: maxBandwidthOut, maxBandwidthIn: maxBandwidthIn), region: region, logger: logger, on: eventLoop)
    }
}
