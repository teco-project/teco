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

extension Tcss {
    /// 查询全部镜像列表
    ///
    /// DescribeImageSimpleList 查询全部镜像列表
    @inlinable
    public func describeImageSimpleList(_ input: DescribeImageSimpleListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeImageSimpleListResponse > {
        self.client.execute(action: "DescribeImageSimpleList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询全部镜像列表
    ///
    /// DescribeImageSimpleList 查询全部镜像列表
    @inlinable
    public func describeImageSimpleList(_ input: DescribeImageSimpleListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageSimpleListResponse {
        try await self.client.execute(action: "DescribeImageSimpleList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeImageSimpleList请求参数结构体
    public struct DescribeImageSimpleListRequest: TCRequestModel {
        /// IsAuthorized 是否已经授权, 0:否 1:是 无:全部
        public let filters: [RunTimeFilters]?
        
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 排序方式
        public let order: String?
        
        /// 排序字段
        public let by: String?
        
        public init (filters: [RunTimeFilters]?, limit: UInt64?, offset: UInt64?, order: String?, by: String?) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }
    }
    
    /// DescribeImageSimpleList返回参数结构体
    public struct DescribeImageSimpleListResponse: TCResponseModel {
        /// 镜像列表
        public let imageList: [ImageSimpleInfo]
        
        /// 镜像数
        public let imageCnt: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case imageList = "ImageList"
            case imageCnt = "ImageCnt"
            case requestId = "RequestId"
        }
    }
}