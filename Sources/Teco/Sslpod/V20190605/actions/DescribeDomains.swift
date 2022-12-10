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

extension Sslpod {
    /// 搜索域名
    ///
    /// 通过searchType搜索已经添加的域名
    @inlinable
    public func describeDomains(_ input: DescribeDomainsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDomainsResponse > {
        self.client.execute(action: "DescribeDomains", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 搜索域名
    ///
    /// 通过searchType搜索已经添加的域名
    @inlinable
    public func describeDomains(_ input: DescribeDomainsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainsResponse {
        try await self.client.execute(action: "DescribeDomains", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDomains请求参数结构体
    public struct DescribeDomainsRequest: TCRequestModel {
        /// 偏移量
        public let offset: Int64
        
        /// 获取数量
        public let limit: Int64
        
        /// 搜索的类型有：none，tags，grade，brand，code，hash，limit，domain。
        /// 选tags，入参请填Tag，
        /// 选grade，入参请填Grade，
        /// 选brand，入参请填Brand，
        /// 选code，入参请填Code，
        /// 选hash，入参请填Hash
        /// 选limit，标识只返回数量信息
        /// 选domain，入参请填Domain
        public let searchType: String
        
        /// 标签，多个标签用逗号分隔
        public let tag: String?
        
        /// 等级
        public let grade: String?
        
        /// 品牌
        public let brand: String?
        
        /// 混合搜索
        public let code: String?
        
        /// 证书指纹
        public let hash: String?
        
        /// 搜索图标类型
        public let item: String?
        
        /// 搜索图标值
        public let status: String?
        
        /// 搜索域名
        public let domain: String?
        
        public init (offset: Int64, limit: Int64, searchType: String, tag: String?, grade: String?, brand: String?, code: String?, hash: String?, item: String?, status: String?, domain: String?) {
            self.offset = offset
            self.limit = limit
            self.searchType = searchType
            self.tag = tag
            self.grade = grade
            self.brand = brand
            self.code = code
            self.hash = hash
            self.item = item
            self.status = status
            self.domain = domain
        }
        
        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchType = "SearchType"
            case tag = "Tag"
            case grade = "Grade"
            case brand = "Brand"
            case code = "Code"
            case hash = "Hash"
            case item = "Item"
            case status = "Status"
            case domain = "Domain"
        }
    }
    
    /// DescribeDomains返回参数结构体
    public struct DescribeDomainsResponse: TCResponseModel {
        /// 列表数据
        public let data: DescribeDomains
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}