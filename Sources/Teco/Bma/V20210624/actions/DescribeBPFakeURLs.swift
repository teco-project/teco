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
    /// DescribeBPFakeURLs请求参数结构体
    public struct DescribeBPFakeURLsRequest: TCRequestModel {
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
    
    /// DescribeBPFakeURLs返回参数结构体
    public struct DescribeBPFakeURLsResponse: TCResponseModel {
        /// 仿冒网址列表
        public let fakeURLInfos: [FakeURLInfo]
        
        /// 总量
        public let totalCount: Int64
        
        /// 导出量
        public let exportURL: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case fakeURLInfos = "FakeURLInfos"
            case totalCount = "TotalCount"
            case exportURL = "ExportURL"
            case requestId = "RequestId"
        }
    }
    
    /// 查询仿冒链接
    @inlinable
    public func describeBPFakeURLs(_ input: DescribeBPFakeURLsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBPFakeURLsResponse > {
        self.client.execute(action: "DescribeBPFakeURLs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询仿冒链接
    @inlinable
    public func describeBPFakeURLs(_ input: DescribeBPFakeURLsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBPFakeURLsResponse {
        try await self.client.execute(action: "DescribeBPFakeURLs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
