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

extension Tione {
    /// 查询资源组详情
    ///
    /// 查询资源组详情
    @inlinable
    public func describeBillingResourceGroups(_ input: DescribeBillingResourceGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBillingResourceGroupsResponse > {
        self.client.execute(action: "DescribeBillingResourceGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询资源组详情
    ///
    /// 查询资源组详情
    @inlinable
    public func describeBillingResourceGroups(_ input: DescribeBillingResourceGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBillingResourceGroupsResponse {
        try await self.client.execute(action: "DescribeBillingResourceGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBillingResourceGroups请求参数结构体
    public struct DescribeBillingResourceGroupsRequest: TCRequestModel {
        /// 资源组类型; 枚举值 TRAIN:训练 INFERENCE:推理
        public let type: String
        
        /// Filter.Name: 枚举值: ResourceGroupId (资源组id列表)
        ///                     ResourceGroupName (资源组名称列表)
        /// Filter.Values: 长度为1且Filter.Fuzzy=true时，支持模糊查询; 不为1时，精确查询
        /// 每次请求的Filters的上限为5，Filter.Values的上限为100
        public let filters: [Filter]?
        
        /// 标签过滤
        public let tagFilters: [TagFilter]?
        
        /// 偏移量，默认为0；分页查询起始位置，如：Limit为100，第一页Offset为0，第二页OffSet为100....即每页左边为闭区间
        public let offset: Int64?
        
        /// 返回数量，默认为20，最大值为30;
        /// 注意：小于0则默认为20；大于30则默认为30
        public let limit: Int64?
        
        /// 支持模糊查找资源组id和资源组名
        public let searchWord: String?
        
        /// 是否不展示节点列表; 
        /// true: 不展示，false 展示；
        /// 默认为false
        public let dontShowInstanceSet: Bool?
        
        public init (type: String, filters: [Filter]?, tagFilters: [TagFilter]?, offset: Int64?, limit: Int64?, searchWord: String?, dontShowInstanceSet: Bool?) {
            self.type = type
            self.filters = filters
            self.tagFilters = tagFilters
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
            self.dontShowInstanceSet = dontShowInstanceSet
        }
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case filters = "Filters"
            case tagFilters = "TagFilters"
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
            case dontShowInstanceSet = "DontShowInstanceSet"
        }
    }
    
    /// DescribeBillingResourceGroups返回参数结构体
    public struct DescribeBillingResourceGroupsResponse: TCResponseModel {
        /// 资源组总数； 注意接口是分页拉取的，total是指资源组总数，不是本次返回中ResourceGroupSet数组的大小
        public let totalCount: UInt64
        
        /// 资源组详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceGroupSet: [ResourceGroup]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case resourceGroupSet = "ResourceGroupSet"
            case requestId = "RequestId"
        }
    }
}