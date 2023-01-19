//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcss {
    /// DescribeRiskSyscallWhiteListDetail请求参数结构体
    public struct DescribeRiskSyscallWhiteListDetailRequest: TCRequestModel {
        /// 白名单id
        public let whiteListId: String

        public init(whiteListId: String) {
            self.whiteListId = whiteListId
        }

        enum CodingKeys: String, CodingKey {
            case whiteListId = "WhiteListId"
        }
    }

    /// DescribeRiskSyscallWhiteListDetail返回参数结构体
    public struct DescribeRiskSyscallWhiteListDetailResponse: TCResponseModel {
        /// 白名单基本信息
        public let whiteListDetailInfo: RiskSyscallWhiteListInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case whiteListDetailInfo = "WhiteListDetailInfo"
            case requestId = "RequestId"
        }
    }

    /// 运行时高危系统调用白名单详细信息
    ///
    /// 查询运行时高危系统调用白名单详细信息
    @inlinable
    public func describeRiskSyscallWhiteListDetail(_ input: DescribeRiskSyscallWhiteListDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskSyscallWhiteListDetailResponse> {
        self.client.execute(action: "DescribeRiskSyscallWhiteListDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时高危系统调用白名单详细信息
    ///
    /// 查询运行时高危系统调用白名单详细信息
    @inlinable
    public func describeRiskSyscallWhiteListDetail(_ input: DescribeRiskSyscallWhiteListDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskSyscallWhiteListDetailResponse {
        try await self.client.execute(action: "DescribeRiskSyscallWhiteListDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时高危系统调用白名单详细信息
    ///
    /// 查询运行时高危系统调用白名单详细信息
    @inlinable
    public func describeRiskSyscallWhiteListDetail(whiteListId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRiskSyscallWhiteListDetailResponse> {
        self.describeRiskSyscallWhiteListDetail(DescribeRiskSyscallWhiteListDetailRequest(whiteListId: whiteListId), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时高危系统调用白名单详细信息
    ///
    /// 查询运行时高危系统调用白名单详细信息
    @inlinable
    public func describeRiskSyscallWhiteListDetail(whiteListId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRiskSyscallWhiteListDetailResponse {
        try await self.describeRiskSyscallWhiteListDetail(DescribeRiskSyscallWhiteListDetailRequest(whiteListId: whiteListId), region: region, logger: logger, on: eventLoop)
    }
}
