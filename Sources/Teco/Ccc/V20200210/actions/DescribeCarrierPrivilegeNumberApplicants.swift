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

import TecoPaginationHelpers

extension Ccc {
    /// DescribeCarrierPrivilegeNumberApplicants请求参数结构体
    public struct DescribeCarrierPrivilegeNumberApplicantsRequest: TCPaginatedRequest {
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

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeCarrierPrivilegeNumberApplicantsResponse) -> DescribeCarrierPrivilegeNumberApplicantsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCarrierPrivilegeNumberApplicantsRequest(sdkAppId: self.sdkAppId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, filters: self.filters)
        }
    }

    /// DescribeCarrierPrivilegeNumberApplicants返回参数结构体
    public struct DescribeCarrierPrivilegeNumberApplicantsResponse: TCPaginatedResponse {
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

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CarrierPrivilegeNumberApplicant] {
            self.applicants
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
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
        let input = DescribeCarrierPrivilegeNumberApplicantsRequest(sdkAppId: sdkAppId, pageNumber: pageNumber, pageSize: pageSize, filters: filters)
        return self.client.execute(action: "DescribeCarrierPrivilegeNumberApplicants", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询运营商白名单号码申请
    ///
    /// 查询单状态
    @inlinable
    public func describeCarrierPrivilegeNumberApplicants(sdkAppId: UInt64, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCarrierPrivilegeNumberApplicantsResponse {
        let input = DescribeCarrierPrivilegeNumberApplicantsRequest(sdkAppId: sdkAppId, pageNumber: pageNumber, pageSize: pageSize, filters: filters)
        return try await self.client.execute(action: "DescribeCarrierPrivilegeNumberApplicants", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询运营商白名单号码申请
    ///
    /// 查询单状态
    @inlinable
    public func describeCarrierPrivilegeNumberApplicantsPaginated(_ input: DescribeCarrierPrivilegeNumberApplicantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CarrierPrivilegeNumberApplicant])> {
        self.client.paginate(input: input, region: region, command: self.describeCarrierPrivilegeNumberApplicants, logger: logger, on: eventLoop)
    }

    /// 查询运营商白名单号码申请
    ///
    /// 查询单状态
    @inlinable @discardableResult
    public func describeCarrierPrivilegeNumberApplicantsPaginated(_ input: DescribeCarrierPrivilegeNumberApplicantsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCarrierPrivilegeNumberApplicantsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCarrierPrivilegeNumberApplicants, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询运营商白名单号码申请
    ///
    /// 查询单状态
    @inlinable
    public func describeCarrierPrivilegeNumberApplicantsPaginator(_ input: DescribeCarrierPrivilegeNumberApplicantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeCarrierPrivilegeNumberApplicantsRequest, DescribeCarrierPrivilegeNumberApplicantsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeCarrierPrivilegeNumberApplicantsRequest, DescribeCarrierPrivilegeNumberApplicantsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCarrierPrivilegeNumberApplicants, logger: logger, on: eventLoop)
    }
}
