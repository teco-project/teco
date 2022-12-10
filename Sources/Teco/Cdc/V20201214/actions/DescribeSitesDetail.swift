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

extension Cdc {
    /// 查询站点详情
    @inlinable
    public func describeSitesDetail(_ input: DescribeSitesDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSitesDetailResponse > {
        self.client.execute(action: "DescribeSitesDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询站点详情
    @inlinable
    public func describeSitesDetail(_ input: DescribeSitesDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSitesDetailResponse {
        try await self.client.execute(action: "DescribeSitesDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSitesDetail请求参数结构体
    public struct DescribeSitesDetailRequest: TCRequestModel {
        /// 按照站点id过滤
        public let siteIds: [String]?
        
        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let offset: Int64?
        
        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/15688)中的相关小节。
        public let limit: Int64?
        
        /// 按照站定名称模糊匹配
        public let name: String?
        
        public init (siteIds: [String]?, offset: Int64?, limit: Int64?, name: String?) {
            self.siteIds = siteIds
            self.offset = offset
            self.limit = limit
            self.name = name
        }
        
        enum CodingKeys: String, CodingKey {
            case siteIds = "SiteIds"
            case offset = "Offset"
            case limit = "Limit"
            case name = "Name"
        }
    }
    
    /// DescribeSitesDetail返回参数结构体
    public struct DescribeSitesDetailResponse: TCResponseModel {
        /// 站点详情
        public let siteDetailSet: [SiteDetail]
        
        /// 符合条件的站点总数
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case siteDetailSet = "SiteDetailSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
