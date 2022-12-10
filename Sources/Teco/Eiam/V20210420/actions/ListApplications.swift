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

extension Eiam {
    /// 获取应用列表信息
    ///
    /// 获取应用列表信息。
    @inlinable
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListApplicationsResponse > {
        self.client.execute(action: "ListApplications", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取应用列表信息
    ///
    /// 获取应用列表信息。
    @inlinable
    public func listApplications(_ input: ListApplicationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListApplicationsResponse {
        try await self.client.execute(action: "ListApplications", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListApplications请求参数结构体
    public struct ListApplicationsRequest: TCRequestModel {
        /// 模糊匹配搜索条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（""）表示全匹配、以星号（* ) 结尾表示字段部分匹配。模糊匹配搜索功能与精准匹配查询不会同时生效，如果SearchCondition与ApplicationIdList均不为空，则默认以ApplicationIdList进行精准查询。如果SearchCondition字段与ApplicationIdList字段均为空，则默认返回全部的应用信息。
        public let searchCondition: ApplicationInfoSearchCriteria
        
        /// 排序条件集合。可排序的属性支持：应用名字（DisplayName）、创建时间（CreatedDate）、上次修改时间（LastModifiedDate）。如果该字段为空，则默认按照应用名字正向排序。
        public let sort: SortCondition
        
        /// 排序条件集合。可排序的属性支持：应用名字（DisplayName）、创建时间（CreatedDate）、上次修改时间（LastModifiedDate）。如果该字段为空，则默认按照应用名字正向排序。
        public let offset: UInt64?
        
        /// 分页读取数量。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询。
        public let limit: UInt64?
        
        /// 应用ID列表，通过应用ID列表精准匹配对应的应用信息。模糊匹配搜索功能与精准匹配查询不会同时生效，如果SearchCondition与ApplicationIdList均不为空，则默认以ApplicationIdList进行精准查询。如果SearchCondition字段与ApplicationIdList字段均为空，则默认返回全部的应用信息。
        public let applicationIdList: [String]?
        
        public init (searchCondition: ApplicationInfoSearchCriteria, sort: SortCondition, offset: UInt64?, limit: UInt64?, applicationIdList: [String]?) {
            self.searchCondition = searchCondition
            self.sort = sort
            self.offset = offset
            self.limit = limit
            self.applicationIdList = applicationIdList
        }
        
        enum CodingKeys: String, CodingKey {
            case searchCondition = "SearchCondition"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
            case applicationIdList = "ApplicationIdList"
        }
    }
    
    /// ListApplications返回参数结构体
    public struct ListApplicationsResponse: TCResponseModel {
        /// 返回的应用信息总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// 返回的应用信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationInfoList: [ApplicationInformation]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case applicationInfoList = "ApplicationInfoList"
            case requestId = "RequestId"
        }
    }
}
