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

extension Cwp {
    /// FixBaselineDetect请求参数结构体
    public struct FixBaselineDetectRequest: TCRequestModel {
        /// 主机Id
        public let hostId: String

        /// 项Id
        public let itemId: Int64

        /// 修复内容
        public let data: [String]?

        public init(hostId: String, itemId: Int64, data: [String]? = nil) {
            self.hostId = hostId
            self.itemId = itemId
            self.data = data
        }

        enum CodingKeys: String, CodingKey {
            case hostId = "HostId"
            case itemId = "ItemId"
            case data = "Data"
        }
    }

    /// FixBaselineDetect返回参数结构体
    public struct FixBaselineDetectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修复基线检测
    @inlinable @discardableResult
    public func fixBaselineDetect(_ input: FixBaselineDetectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FixBaselineDetectResponse> {
        self.client.execute(action: "FixBaselineDetect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修复基线检测
    @inlinable @discardableResult
    public func fixBaselineDetect(_ input: FixBaselineDetectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FixBaselineDetectResponse {
        try await self.client.execute(action: "FixBaselineDetect", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修复基线检测
    @inlinable @discardableResult
    public func fixBaselineDetect(hostId: String, itemId: Int64, data: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FixBaselineDetectResponse> {
        self.fixBaselineDetect(.init(hostId: hostId, itemId: itemId, data: data), region: region, logger: logger, on: eventLoop)
    }

    /// 修复基线检测
    @inlinable @discardableResult
    public func fixBaselineDetect(hostId: String, itemId: Int64, data: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FixBaselineDetectResponse {
        try await self.fixBaselineDetect(.init(hostId: hostId, itemId: itemId, data: data), region: region, logger: logger, on: eventLoop)
    }
}
