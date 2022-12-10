//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Teo {
    /// 查询默认证书列表
    ///
    /// 查询默认证书列表
    @inlinable
    public func describeDefaultCertificates(_ input: DescribeDefaultCertificatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDefaultCertificatesResponse > {
        self.client.execute(action: "DescribeDefaultCertificates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询默认证书列表
    ///
    /// 查询默认证书列表
    @inlinable
    public func describeDefaultCertificates(_ input: DescribeDefaultCertificatesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultCertificatesResponse {
        try await self.client.execute(action: "DescribeDefaultCertificates", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDefaultCertificates请求参数结构体
    public struct DescribeDefaultCertificatesRequest: TCRequestModel {
        /// 过滤条件，Filters.Values的上限为5。详细的过滤条件如下：
        /// <li>zone-id<br>   按照【<strong>站点ID</strong>】进行过滤。站点ID形如：zone-xxx。<br>   类型：String<br>   必选：是 </li>
        public let filters: [Filter]
        
        /// 分页查询偏移量。默认值：0。
        public let offset: Int64?
        
        /// 分页查询限制数目。默认值：20，最大值：100。
        public let limit: Int64?
        
        public init (filters: [Filter], offset: Int64?, limit: Int64?) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeDefaultCertificates返回参数结构体
    public struct DescribeDefaultCertificatesResponse: TCResponseModel {
        /// 证书总数。
        public let totalCount: Int64
        
        /// 默认证书列表。
        public let defaultServerCertInfo: [DefaultServerCertInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case defaultServerCertInfo = "DefaultServerCertInfo"
            case requestId = "RequestId"
        }
    }
}