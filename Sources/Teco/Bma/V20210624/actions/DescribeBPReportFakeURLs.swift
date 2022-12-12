//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Bma {
    /// DescribeBPReportFakeURLs请求参数结构体
    public struct DescribeBPReportFakeURLsRequest: TCRequestModel {
        /// 过滤条件
        public let filters: [Filter]?
        
        /// 页数
        public let pageSize: Int64?
        
        /// 页码
        public let pageNumber: Int64?
        
        public init (filters: [Filter]? = nil, pageSize: Int64? = nil, pageNumber: Int64? = nil) {
            self.filters = filters
            self.pageSize = pageSize
            self.pageNumber = pageNumber
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
        }
    }
    
    /// DescribeBPReportFakeURLs返回参数结构体
    public struct DescribeBPReportFakeURLsResponse: TCResponseModel {
        /// 举报网站列表
        public let reportFakeURLInfos: [ReportFakeURLInfo]
        
        /// 总量
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case reportFakeURLInfos = "ReportFakeURLInfos"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 查询举报列表
    @inlinable
    public func describeBPReportFakeURLs(_ input: DescribeBPReportFakeURLsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBPReportFakeURLsResponse > {
        self.client.execute(action: "DescribeBPReportFakeURLs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询举报列表
    @inlinable
    public func describeBPReportFakeURLs(_ input: DescribeBPReportFakeURLsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBPReportFakeURLsResponse {
        try await self.client.execute(action: "DescribeBPReportFakeURLs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
