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
    /// DescribeRecordLineList请求参数结构体
    public struct DescribeRecordLineListRequest: TCRequestModel {
        /// 域名。
        public let domain: String

        /// 域名等级。
        /// + 旧套餐：D_FREE、D_PLUS、D_EXTRA、D_EXPERT、D_ULTRA 分别对应免费套餐、个人豪华、企业1、企业2、企业3。
        /// + 新套餐：DP_FREE、DP_PLUS、DP_EXTRA、DP_EXPERT、DP_ULTRA 分别对应新免费、个人专业版、企业创业版、企业标准版、企业旗舰版。
        public let domainGrade: String

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?

        public init(domain: String, domainGrade: String, domainId: UInt64? = nil) {
            self.domain = domain
            self.domainGrade = domainGrade
            self.domainId = domainId
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case domainGrade = "DomainGrade"
            case domainId = "DomainId"
        }
    }

    /// DescribeRecordLineList返回参数结构体
    public struct DescribeRecordLineListResponse: TCResponseModel {
        /// 线路列表。
        public let lineList: [LineInfo]

        /// 线路分组列表。
        public let lineGroupList: [LineGroupInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case lineList = "LineList"
            case lineGroupList = "LineGroupList"
            case requestId = "RequestId"
        }
    }

    /// 获取等级允许的线路
    @inlinable
    public func describeRecordLineList(_ input: DescribeRecordLineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordLineListResponse> {
        self.client.execute(action: "DescribeRecordLineList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取等级允许的线路
    @inlinable
    public func describeRecordLineList(_ input: DescribeRecordLineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordLineListResponse {
        try await self.client.execute(action: "DescribeRecordLineList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取等级允许的线路
    @inlinable
    public func describeRecordLineList(domain: String, domainGrade: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRecordLineListResponse> {
        self.describeRecordLineList(.init(domain: domain, domainGrade: domainGrade, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取等级允许的线路
    @inlinable
    public func describeRecordLineList(domain: String, domainGrade: String, domainId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRecordLineListResponse {
        try await self.describeRecordLineList(.init(domain: domain, domainGrade: domainGrade, domainId: domainId), region: region, logger: logger, on: eventLoop)
    }
}
