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

extension Ccc {
    /// DescribeCarrierPrivilegeNumberApplicants请求参数结构体
    public struct DescribeCarrierPrivilegeNumberApplicantsRequest: TCRequestModel {
        /// 实例Id
        public let sdkAppId: UInt64

        /// 默认0，从0开始
        public let pageNumber: UInt64?

        /// 默认10，最大100
        public let pageSize: UInt64?

        /// 筛选条件,Name支持ApplicantId,PhoneNumber(按号码模糊查找)
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

    /// DescribeCarrierPrivilegeNumberApplicants返回参数结构体
    public struct DescribeCarrierPrivilegeNumberApplicantsResponse: TCResponseModel {
        /// 筛选出的总申请单数量
        public let totalCount: UInt64

        /// 申请单列表
        public let applicants: [CarrierPrivilegeNumberApplicant]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case applicants = "Applicants"
            case requestId = "RequestId"
        }
    }

    /// 查询运营商白名单号码申请
    ///
    /// 查询单状态
    @inlinable
    public func describeCarrierPrivilegeNumberApplicants(_ input: DescribeCarrierPrivilegeNumberApplicantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCarrierPrivilegeNumberApplicantsResponse> {
        self.client.execute(action: "DescribeCarrierPrivilegeNumberApplicants", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询运营商白名单号码申请
    ///
    /// 查询单状态
    @inlinable
    public func describeCarrierPrivilegeNumberApplicants(_ input: DescribeCarrierPrivilegeNumberApplicantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCarrierPrivilegeNumberApplicantsResponse {
        try await self.client.execute(action: "DescribeCarrierPrivilegeNumberApplicants", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询运营商白名单号码申请
    ///
    /// 查询单状态
    @inlinable
    public func describeCarrierPrivilegeNumberApplicants(sdkAppId: UInt64, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCarrierPrivilegeNumberApplicantsResponse> {
        self.describeCarrierPrivilegeNumberApplicants(DescribeCarrierPrivilegeNumberApplicantsRequest(sdkAppId: sdkAppId, pageNumber: pageNumber, pageSize: pageSize, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询运营商白名单号码申请
    ///
    /// 查询单状态
    @inlinable
    public func describeCarrierPrivilegeNumberApplicants(sdkAppId: UInt64, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCarrierPrivilegeNumberApplicantsResponse {
        try await self.describeCarrierPrivilegeNumberApplicants(DescribeCarrierPrivilegeNumberApplicantsRequest(sdkAppId: sdkAppId, pageNumber: pageNumber, pageSize: pageSize, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
