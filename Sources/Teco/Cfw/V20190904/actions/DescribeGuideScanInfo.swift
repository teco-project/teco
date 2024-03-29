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

extension Cfw {
    /// DescribeGuideScanInfo请求参数结构体
    public struct DescribeGuideScanInfoRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeGuideScanInfo返回参数结构体
    public struct DescribeGuideScanInfoResponse: TCResponse {
        /// 扫描信息
        public let data: ScanInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 新手引导扫描接口信息
    ///
    /// DescribeGuideScanInfo新手引导扫描接口信息
    @inlinable
    public func describeGuideScanInfo(_ input: DescribeGuideScanInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGuideScanInfoResponse> {
        self.client.execute(action: "DescribeGuideScanInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新手引导扫描接口信息
    ///
    /// DescribeGuideScanInfo新手引导扫描接口信息
    @inlinable
    public func describeGuideScanInfo(_ input: DescribeGuideScanInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGuideScanInfoResponse {
        try await self.client.execute(action: "DescribeGuideScanInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新手引导扫描接口信息
    ///
    /// DescribeGuideScanInfo新手引导扫描接口信息
    @inlinable
    public func describeGuideScanInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGuideScanInfoResponse> {
        self.describeGuideScanInfo(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 新手引导扫描接口信息
    ///
    /// DescribeGuideScanInfo新手引导扫描接口信息
    @inlinable
    public func describeGuideScanInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGuideScanInfoResponse {
        try await self.describeGuideScanInfo(.init(), region: region, logger: logger, on: eventLoop)
    }
}
