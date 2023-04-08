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

import TecoCore

extension Cwp {
    /// DescribeWebPageProtectStat请求参数结构体
    public struct DescribeWebPageProtectStatRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeWebPageProtectStat返回参数结构体
    public struct DescribeWebPageProtectStatResponse: TCResponseModel {
        /// 文件篡改信息
        public let fileTamperNum: [ProtectStat]

        /// 防护文件分类信息
        public let protectFileType: [ProtectStat]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileTamperNum = "FileTamperNum"
            case protectFileType = "ProtectFileType"
            case requestId = "RequestId"
        }
    }

    /// 查询网页防篡改防护统计
    ///
    /// 网站防篡改-查询动态防护信息
    @inlinable
    public func describeWebPageProtectStat(_ input: DescribeWebPageProtectStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebPageProtectStatResponse> {
        self.client.execute(action: "DescribeWebPageProtectStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网页防篡改防护统计
    ///
    /// 网站防篡改-查询动态防护信息
    @inlinable
    public func describeWebPageProtectStat(_ input: DescribeWebPageProtectStatRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebPageProtectStatResponse {
        try await self.client.execute(action: "DescribeWebPageProtectStat", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网页防篡改防护统计
    ///
    /// 网站防篡改-查询动态防护信息
    @inlinable
    public func describeWebPageProtectStat(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebPageProtectStatResponse> {
        self.describeWebPageProtectStat(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网页防篡改防护统计
    ///
    /// 网站防篡改-查询动态防护信息
    @inlinable
    public func describeWebPageProtectStat(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebPageProtectStatResponse {
        try await self.describeWebPageProtectStat(.init(), region: region, logger: logger, on: eventLoop)
    }
}
