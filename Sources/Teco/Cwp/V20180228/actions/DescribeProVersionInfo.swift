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
    /// DescribeProVersionInfo请求参数结构体
    public struct DescribeProVersionInfoRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeProVersionInfo返回参数结构体
    public struct DescribeProVersionInfoResponse: TCResponseModel {
        /// 后付费昨日扣费
        public let postPayCost: UInt64

        /// 新增主机是否自动开通专业版
        public let isAutoOpenProVersion: Bool

        /// 开通专业版主机数
        public let proVersionNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case postPayCost = "PostPayCost"
            case isAutoOpenProVersion = "IsAutoOpenProVersion"
            case proVersionNum = "ProVersionNum"
            case requestId = "RequestId"
        }
    }

    /// 获取专业版概览信息
    ///
    /// 用于获取专业版概览信息。
    @inlinable
    public func describeProVersionInfo(_ input: DescribeProVersionInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProVersionInfoResponse> {
        self.client.execute(action: "DescribeProVersionInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取专业版概览信息
    ///
    /// 用于获取专业版概览信息。
    @inlinable
    public func describeProVersionInfo(_ input: DescribeProVersionInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProVersionInfoResponse {
        try await self.client.execute(action: "DescribeProVersionInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取专业版概览信息
    ///
    /// 用于获取专业版概览信息。
    @inlinable
    public func describeProVersionInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeProVersionInfoResponse> {
        self.describeProVersionInfo(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取专业版概览信息
    ///
    /// 用于获取专业版概览信息。
    @inlinable
    public func describeProVersionInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeProVersionInfoResponse {
        try await self.describeProVersionInfo(.init(), region: region, logger: logger, on: eventLoop)
    }
}
