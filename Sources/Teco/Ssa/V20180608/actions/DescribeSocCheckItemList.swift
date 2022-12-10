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

extension Ssa {
    /// 云安全配置检查项列表
    ///
    /// 云安全配置检查项列表
    @inlinable
    public func describeSocCheckItemList(_ input: DescribeSocCheckItemListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSocCheckItemListResponse > {
        self.client.execute(action: "DescribeSocCheckItemList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 云安全配置检查项列表
    ///
    /// 云安全配置检查项列表
    @inlinable
    public func describeSocCheckItemList(_ input: DescribeSocCheckItemListRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSocCheckItemListResponse {
        try await self.client.execute(action: "DescribeSocCheckItemList", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSocCheckItemList请求参数结构体
    public struct DescribeSocCheckItemListRequest: TCRequestModel {
        /// 查询参数,可支持的排序字段:Name,Type,AssetType,Level,Standard,IsFree
        public let filter: [QueryFilter]?
        
        /// 排序参数:无
        public let sorter: [QuerySort]?
        
        /// 当前页码数据，默认值为10
        public let pageSize: Int64?
        
        /// 当前页面索引，默认值为0
        public let pageIndex: Int64?
        
        public init (filter: [QueryFilter]?, sorter: [QuerySort]?, pageSize: Int64?, pageIndex: Int64?) {
            self.filter = filter
            self.sorter = sorter
            self.pageSize = pageSize
            self.pageIndex = pageIndex
        }
        
        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case sorter = "Sorter"
            case pageSize = "PageSize"
            case pageIndex = "PageIndex"
        }
    }
    
    /// DescribeSocCheckItemList返回参数结构体
    public struct DescribeSocCheckItemListResponse: TCResponseModel {
        /// 检查项列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DescribeSocCheckItemListRspRsp
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}