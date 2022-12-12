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

extension Scf {
    /// ListFunctions请求参数结构体
    public struct ListFunctionsRequest: TCRequestModel {
        /// 以升序还是降序的方式返回结果，可选值 ASC 和 DESC
        public let order: String?
        
        /// 根据哪个字段进行返回结果排序,支持以下字段：AddTime, ModTime, FunctionName
        public let orderby: String?
        
        /// 数据偏移量，默认值为 0
        public let offset: Int64?
        
        /// 返回数据长度，默认值为 20
        public let limit: Int64?
        
        /// 支持FunctionName模糊匹配
        public let searchKey: String?
        
        /// 命名空间
        public let namespace: String?
        
        /// 函数描述，支持模糊搜索
        public let description: String?
        
        /// 过滤条件。
        /// - tag:tag-key - String - 是否必填：否 - （过滤条件）按照标签键值对进行过滤。 tag-key使用具体的标签键进行替换。
        /// 每次请求的Filters的上限为10，Filter.Values的上限为5。
        public let filters: [Filter]?
        
        public init (order: String? = nil, orderby: String? = nil, offset: Int64? = nil, limit: Int64? = nil, searchKey: String? = nil, namespace: String? = nil, description: String? = nil, filters: [Filter]? = nil) {
            self.order = order
            self.orderby = orderby
            self.offset = offset
            self.limit = limit
            self.searchKey = searchKey
            self.namespace = namespace
            self.description = description
            self.filters = filters
        }
        
        enum CodingKeys: String, CodingKey {
            case order = "Order"
            case orderby = "Orderby"
            case offset = "Offset"
            case limit = "Limit"
            case searchKey = "SearchKey"
            case namespace = "Namespace"
            case description = "Description"
            case filters = "Filters"
        }
    }
    
    /// ListFunctions返回参数结构体
    public struct ListFunctionsResponse: TCResponseModel {
        /// 函数列表
        public let functions: [Function]
        
        /// 总数
        public let totalCount: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case functions = "Functions"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
    
    /// 获取函数列表
    ///
    /// 该接口根据传入的查询参数返回相关函数信息。
    @inlinable
    public func listFunctions(_ input: ListFunctionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListFunctionsResponse > {
        self.client.execute(action: "ListFunctions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取函数列表
    ///
    /// 该接口根据传入的查询参数返回相关函数信息。
    @inlinable
    public func listFunctions(_ input: ListFunctionsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListFunctionsResponse {
        try await self.client.execute(action: "ListFunctions", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
