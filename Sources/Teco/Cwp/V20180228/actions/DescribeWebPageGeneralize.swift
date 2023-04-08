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
    /// DescribeWebPageGeneralize请求参数结构体
    public struct DescribeWebPageGeneralizeRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeWebPageGeneralize返回参数结构体
    public struct DescribeWebPageGeneralizeResponse: TCResponseModel {
        /// 防护监测 0 未开启 1 已开启 2 异常
        public let protectMonitor: UInt64

        /// 防护目录数
        public let protectDirNum: UInt64

        /// 防护文件数
        public let protectFileNum: UInt64

        /// 篡改文件数
        public let tamperFileNum: UInt64

        /// 篡改数
        public let tamperNum: UInt64

        /// 今日防护数
        public let protectToday: UInt64

        /// 防护主机数
        public let protectHostNum: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case protectMonitor = "ProtectMonitor"
            case protectDirNum = "ProtectDirNum"
            case protectFileNum = "ProtectFileNum"
            case tamperFileNum = "TamperFileNum"
            case tamperNum = "TamperNum"
            case protectToday = "ProtectToday"
            case protectHostNum = "ProtectHostNum"
            case requestId = "RequestId"
        }
    }

    /// 查询网页防篡改概览信息
    ///
    /// 查询网站防篡改概览信息
    @inlinable
    public func describeWebPageGeneralize(_ input: DescribeWebPageGeneralizeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebPageGeneralizeResponse> {
        self.client.execute(action: "DescribeWebPageGeneralize", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网页防篡改概览信息
    ///
    /// 查询网站防篡改概览信息
    @inlinable
    public func describeWebPageGeneralize(_ input: DescribeWebPageGeneralizeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebPageGeneralizeResponse {
        try await self.client.execute(action: "DescribeWebPageGeneralize", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网页防篡改概览信息
    ///
    /// 查询网站防篡改概览信息
    @inlinable
    public func describeWebPageGeneralize(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWebPageGeneralizeResponse> {
        self.describeWebPageGeneralize(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询网页防篡改概览信息
    ///
    /// 查询网站防篡改概览信息
    @inlinable
    public func describeWebPageGeneralize(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWebPageGeneralizeResponse {
        try await self.describeWebPageGeneralize(.init(), region: region, logger: logger, on: eventLoop)
    }
}
