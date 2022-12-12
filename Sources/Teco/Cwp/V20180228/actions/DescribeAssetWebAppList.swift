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

extension Cwp {
    /// DescribeAssetWebAppList请求参数结构体
    public struct DescribeAssetWebAppListRequest: TCRequestModel {
        /// 查询指定Quuid主机的信息
        public let quuid: String?
        
        /// 过滤条件。
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>Name - String - 是否必填：否 - 应用名</li>
        /// <li>Domain - String - 是否必填：否 - 站点域名</li>
        /// <li>Type - int - 是否必填：否 - 服务类型：
        /// 0：全部
        /// 1:Tomcat
        /// 2:Apache
        /// 3:Nginx
        /// 4:WebLogic
        /// 5:Websphere
        /// 6:JBoss
        /// 7:Jetty
        /// 8:IHS
        /// 9:Tengine</li>
        /// <li>OsType - String - 是否必填：否 - windows/linux</li>
        /// <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )</li>
        public let filters: [Filter]?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 排序方式，asc升序 或 desc降序
        public let order: String?
        
        /// 可选排序：[FirstTime|PluginCount]
        public let by: String?
        
        public init (quuid: String? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, order: String? = nil, by: String? = nil) {
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
    
    /// DescribeAssetWebAppList返回参数结构体
    public struct DescribeAssetWebAppListResponse: TCResponseModel {
        /// 记录总数
        public let total: UInt64
        
        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let webApps: [AssetWebAppBaseInfo]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case webApps = "WebApps"
            case requestId = "RequestId"
        }
    }
    
    /// 获取资产管理Web应用列表
    @inlinable
    public func describeAssetWebAppList(_ input: DescribeAssetWebAppListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetWebAppListResponse > {
        self.client.execute(action: "DescribeAssetWebAppList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取资产管理Web应用列表
    @inlinable
    public func describeAssetWebAppList(_ input: DescribeAssetWebAppListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetWebAppListResponse {
        try await self.client.execute(action: "DescribeAssetWebAppList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
