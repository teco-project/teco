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

extension Lcic {
    /// DescribeSupervisors请求参数结构体
    public struct DescribeSupervisorsRequest: TCRequestModel {
        /// 低代码互动课堂的SdkAppId。
        public let sdkAppId: UInt64

        /// 每页数据量，最大100。 不填默认20.
        public let limit: UInt64?

        /// 分页查询当前页数，从1开始递增，不填默认为1。
        public let page: UInt64?

        public init(sdkAppId: UInt64, limit: UInt64? = nil, page: UInt64? = nil) {
            self.sdkAppId = sdkAppId
            self.limit = limit
            self.page = page
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case limit = "Limit"
            case page = "Page"
        }
    }

    /// DescribeSupervisors返回参数结构体
    public struct DescribeSupervisorsResponse: TCResponseModel {
        /// 数据总量
        public let total: UInt64

        /// 分页查询当前页数
        public let page: UInt64

        /// 当前页数据量
        public let limit: UInt64

        /// 巡课列表
        public let userIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case page = "Page"
            case limit = "Limit"
            case userIds = "UserIds"
            case requestId = "RequestId"
        }
    }

    /// 获取巡课列表
    @inlinable
    public func describeSupervisors(_ input: DescribeSupervisorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSupervisorsResponse> {
        self.client.execute(action: "DescribeSupervisors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取巡课列表
    @inlinable
    public func describeSupervisors(_ input: DescribeSupervisorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSupervisorsResponse {
        try await self.client.execute(action: "DescribeSupervisors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取巡课列表
    @inlinable
    public func describeSupervisors(sdkAppId: UInt64, limit: UInt64? = nil, page: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSupervisorsResponse> {
        self.describeSupervisors(.init(sdkAppId: sdkAppId, limit: limit, page: page), region: region, logger: logger, on: eventLoop)
    }

    /// 获取巡课列表
    @inlinable
    public func describeSupervisors(sdkAppId: UInt64, limit: UInt64? = nil, page: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSupervisorsResponse {
        try await self.describeSupervisors(.init(sdkAppId: sdkAppId, limit: limit, page: page), region: region, logger: logger, on: eventLoop)
    }
}
