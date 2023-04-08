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

extension Ccc {
    /// DescribeActiveCarrierPrivilegeNumber请求参数结构体
    public struct DescribeActiveCarrierPrivilegeNumberRequest: TCRequestModel {
        /// 实例Id
        public let sdkAppId: UInt64

        /// 默认0
        public let pageNumber: UInt64?

        /// 默认10，最大100
        public let pageSize: UInt64?

        /// 筛选条件 Name支持PhoneNumber(按号码模糊查找)
        public let filters: [Filter]?

        public init(sdkAppId: UInt64, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil) {
            self.sdkAppId = sdkAppId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case filters = "Filters"
        }
    }

    /// DescribeActiveCarrierPrivilegeNumber返回参数结构体
    public struct DescribeActiveCarrierPrivilegeNumberResponse: TCResponseModel {
        /// 总数量
        public let totalCount: UInt64

        /// 生效列表
        public let activeCarrierPrivilegeNumbers: [ActiveCarrierPrivilegeNumber]

        /// 待审核单号
        public let pendingApplicantIds: [UInt64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case activeCarrierPrivilegeNumbers = "ActiveCarrierPrivilegeNumbers"
            case pendingApplicantIds = "PendingApplicantIds"
            case requestId = "RequestId"
        }
    }

    /// 查询生效运营商白名单规则
    @inlinable
    public func describeActiveCarrierPrivilegeNumber(_ input: DescribeActiveCarrierPrivilegeNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeActiveCarrierPrivilegeNumberResponse> {
        self.client.execute(action: "DescribeActiveCarrierPrivilegeNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询生效运营商白名单规则
    @inlinable
    public func describeActiveCarrierPrivilegeNumber(_ input: DescribeActiveCarrierPrivilegeNumberRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeActiveCarrierPrivilegeNumberResponse {
        try await self.client.execute(action: "DescribeActiveCarrierPrivilegeNumber", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询生效运营商白名单规则
    @inlinable
    public func describeActiveCarrierPrivilegeNumber(sdkAppId: UInt64, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeActiveCarrierPrivilegeNumberResponse> {
        self.describeActiveCarrierPrivilegeNumber(.init(sdkAppId: sdkAppId, pageNumber: pageNumber, pageSize: pageSize, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询生效运营商白名单规则
    @inlinable
    public func describeActiveCarrierPrivilegeNumber(sdkAppId: UInt64, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeActiveCarrierPrivilegeNumberResponse {
        try await self.describeActiveCarrierPrivilegeNumber(.init(sdkAppId: sdkAppId, pageNumber: pageNumber, pageSize: pageSize, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
