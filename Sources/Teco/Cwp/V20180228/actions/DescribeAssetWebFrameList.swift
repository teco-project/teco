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

extension Cwp {
    /// 获取资产管理Web框架列表
    ///
    /// 获取资产管理Web框架列表
    @inlinable
    public func describeAssetWebFrameList(_ input: DescribeAssetWebFrameListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetWebFrameListResponse > {
        self.client.execute(action: "DescribeAssetWebFrameList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取资产管理Web框架列表
    ///
    /// 获取资产管理Web框架列表
    @inlinable
    public func describeAssetWebFrameList(_ input: DescribeAssetWebFrameListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebFrameListResponse {
        try await self.client.execute(action: "DescribeAssetWebFrameList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAssetWebFrameList请求参数结构体
    public struct DescribeAssetWebFrameListRequest: TCRequestModel {
        /// 查询指定Quuid主机的信息
        public let quuid: String?
        
        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>Name - String - 是否必填：否 - 框架名</li>
        /// <li>NameStrict - String - 是否必填：否 - 框架名（严格匹配）</li>
        /// <li>Lang - String - 是否必填：否 - 框架语言:java/python</li>
        /// <li>Type - String - 是否必填：否 - 服务类型：
        /// 0：全部
        /// 1:Tomcat
        /// 2:Apache
        /// 3:Nginx
        /// 4:WebLogic
        /// 5:Websphere
        /// 6:JBoss
        /// 7:WildFly
        /// 8:Jetty
        /// 9:IHS
        /// 10:Tengine</li>
        /// <li>OsType - String - 是否必填：否 - windows/linux</li>
        /// <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        public let filters: [Filter]?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 排序方式，asc升序 或 desc降序
        public let order: String?
        
        /// 可选排序：[FirstTime|JarCount]
        public let by: String?
        
        public init (quuid: String?, filters: [Filter]?, offset: UInt64?, limit: UInt64?, order: String?, by: String?) {
            self.quuid = quuid
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.order = order
            self.by = by
        }
        
        enum CodingKeys: String, CodingKey {
            case quuid = "Quuid"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case order = "Order"
            case by = "By"
        }
    }
    
    /// DescribeAssetWebFrameList返回参数结构体
    public struct DescribeAssetWebFrameListResponse: TCResponseModel {
        /// 记录总数
        public let total: UInt64
        
        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webFrames: [AssetWebFrameBaseInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case webFrames = "WebFrames"
            case requestId = "RequestId"
        }
    }
}