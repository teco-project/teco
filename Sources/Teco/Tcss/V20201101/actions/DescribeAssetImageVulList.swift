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

extension Tcss {
    /// 查询镜像漏洞列表
    ///
    /// 容器安全查询镜像漏洞列表
    @inlinable
    public func describeAssetImageVulList(_ input: DescribeAssetImageVulListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetImageVulListResponse > {
        self.client.execute(action: "DescribeAssetImageVulList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询镜像漏洞列表
    ///
    /// 容器安全查询镜像漏洞列表
    @inlinable
    public func describeAssetImageVulList(_ input: DescribeAssetImageVulListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageVulListResponse {
        try await self.client.execute(action: "DescribeAssetImageVulList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAssetImageVulList请求参数结构体
    public struct DescribeAssetImageVulListRequest: TCRequestModel {
        /// 镜像id
        public let imageID: String
        
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>Name- String - 是否必填：否 - 漏洞名称名称筛选，</li>
        /// <li>Level - String - 是否必填：否 - 风险等级  1,2,3,4</li>
        public let filters: [AssetFilters]?
        
        /// 排序字段（Level）
        public let by: String?
        
        /// 排序方式 + -
        public let order: String?
        
        public init (imageID: String, limit: UInt64?, offset: UInt64?, filters: [AssetFilters]?, by: String?, order: String?) {
            self.imageID = imageID
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
        }
        
        enum CodingKeys: String, CodingKey {
            case imageID = "ImageID"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }
    }
    
    /// DescribeAssetImageVulList返回参数结构体
    public struct DescribeAssetImageVulListResponse: TCResponseModel {
        /// 镜像漏洞列表
        public let list: [ImagesVul]
        
        /// 总数量
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
