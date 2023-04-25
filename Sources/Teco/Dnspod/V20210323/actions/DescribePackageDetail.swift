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

extension Dnspod {
    /// DescribePackageDetail请求参数结构体
    public struct DescribePackageDetailRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribePackageDetail返回参数结构体
    public struct DescribePackageDetailResponse: TCResponseModel {
        /// 套餐配置详情
        public let info: [PackageDetailItem]

        /// 套餐代码列表
        public let levelMap: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case info = "Info"
            case levelMap = "LevelMap"
            case requestId = "RequestId"
        }
    }

    /// 获取各套餐配置详情
    @inlinable
    public func describePackageDetail(_ input: DescribePackageDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackageDetailResponse> {
        self.client.execute(action: "DescribePackageDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取各套餐配置详情
    @inlinable
    public func describePackageDetail(_ input: DescribePackageDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageDetailResponse {
        try await self.client.execute(action: "DescribePackageDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取各套餐配置详情
    @inlinable
    public func describePackageDetail(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePackageDetailResponse> {
        self.describePackageDetail(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取各套餐配置详情
    @inlinable
    public func describePackageDetail(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePackageDetailResponse {
        try await self.describePackageDetail(.init(), region: region, logger: logger, on: eventLoop)
    }
}
